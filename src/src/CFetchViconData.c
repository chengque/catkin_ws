#include "CFetchViconData.h"
#include "unistd.h"
#include <fstream>

ObjStatus::ObjStatus()
{
            for(int i=0;i<3;i++)
            {
                pos[i]=0;
                vel[i]=0;
            }
            tm=0;
            res=false;   
}
/*
        bool CFetchViconData::IsConnected()
        {
            return client.IsConnected().Connected;
        }*/
        
    CFetchViconData::CFetchViconData()
    {   
        IsConnected=false;
        segCount=-1;
        getModelName();
        std::ifstream mystream("ip.cfg");
        mystream.getline(host,50);
        segOrg[0]=0.07;
        segOrg[1]=0.1;
        segOrg[2]=-0.1;
    }

ObjStatus & ObjStatus::operator =(ObjStatus s)
{
    for(int i=0;i<3;i++)
    {
        pos[i]=s.pos[i];
        vel[i]=s.vel[i];
        tm=s.tm;
        res=s.res;
    }
    return *this;
}

bool CFetchViconData::Connect(const char * Hostname)
{
	bool res=false;
    IsConnected=false;
    printf("Connecting to %s...\r\n",Hostname);
    res=(client.Connect(Hostname).Result==Result::Success);
    if(res)
    {
        printf("Successfully connected!\r\n");
        client.EnableSegmentData();
        client.EnableMarkerData();
        client.EnableUnlabeledMarkerData();
        client.EnableDeviceData();
        IsConnected=true;
        return true;
    }
    printf("Failed to connect!\r\n");
	return false;
}

bool CFetchViconData::Disconnect()
{
    if(client.IsConnected().Connected)
    {
        client.Disconnect();
    }
    IsConnected=false;
	return true;
}

ObjStatus CFetchViconData::GetStatus(int i)
{
    
	ObjStatus s;
    Output_GetFrameNumber output;

    unsigned int fn;
    Output_GetFrame outputframe;
    outputframe=client.GetFrame();
    if(outputframe.Result!=Result::Success)
    {
        s.res=false;
        return s;
    }
    
    Output_GetSegmentGlobalTranslation _Output_GetSegmentGlobalTranslation = 
          client.GetSegmentGlobalTranslation( model[i], segment[i] );/*;("Patient","Foot")*/
    
    Output_GetSegmentGlobalRotationMatrix Output_Rotation = client.GetSegmentGlobalRotationMatrix( model[i], segment[i] );
    
    if(_Output_GetSegmentGlobalTranslation.Result!=Result::Success)
    {
        s.res=false;
        return s;
    }
    if(_Output_GetSegmentGlobalTranslation.Occluded)
    {
        s.res=false;
        return s;
    }
    s.res=true;
   /* printf("Get a frame...");*/
    for(int i=0;i<3;i++)
    {
        s.pos[i]=_Output_GetSegmentGlobalTranslation.Translation[i]/1000;
    }
   
   
   for(int k=0;k<3;k++)
   {
       for(int i=0;i<3;i++)
       {
            s.pos[k]=s.pos[k]+segOrg[i]*Output_Rotation.Rotation[i+k*3];
       }
   }
   
    output=client.GetFrameNumber();
    Output_GetFrameRate outframerate=client.GetFrameRate();
    if(outframerate.FrameRateHz>0)
    {
        s.tm=(real_T)output.FrameNumber/outframerate.FrameRateHz;
    }
    else
    {
        s.tm=0.02;
    }
    if(lastStatus.res)
    {
        real_T dt=s.tm-lastStatus.tm;
        if(dt<=0)
        {
            dt=0.02;   
        }
        for(int i=0;i<3;i++)
        {
            s.vel[i]=(s.pos[i]-lastStatus.pos[i])/dt;
        }
    }
    lastStatus=s;
   /* printf("Return the value...");*/
	return s;
}


void CFetchViconData::getSegName(const char * line,char * model,char * segment)
{
	bool seg=false;
	int index=0;
	int breakindex=0;
	for(int i=0;;i++)
	{
		if(seg==false)
		{
			if(line[i]!=':')
			{
				model[i]=line[i];
			}
			else
			{
				model[i]=0;
				seg=true;
				breakindex=i;
			}
		}
		else
		{
			segment[i-breakindex-1]=line[i];
		}
		if(line[i]==0)
		{
			return;
		}
	}
}


void CFetchViconData::getModelName()
{
    std::ifstream mystream("file.cfg");
    segCount=0;
    while(!mystream.eof())
    {
        mystream.getline(buf[segCount],20);
        getSegName(buf[segCount],model[segCount],segment[segCount]);
        segCount++;
    }
    segCount=segCount-1;
}

char * CFetchViconData::GetModelName(int i)
{
    return model[i];
}

char * CFetchViconData::GetSegName(int i)
{
    return segment[i];
}