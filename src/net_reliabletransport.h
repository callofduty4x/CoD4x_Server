
#define MAX_PACKETLEN           1400        // max size of a network packet
#define MAX_FRAGMENT_SIZE         ( MAX_PACKETLEN - 200 )

typedef struct
{
	cod4x_byte data[MAX_FRAGMENT_SIZE];
	int len;
	int ack;
	int packetnum;
	int senttime;
}fragment_t;

typedef struct
{
	int nextRateCntTime; //Used by cod4x_bytesPerSecond to know when to calculate the current rate
	//This counts only the sent cod4x_bytes
	int cod4x_bytes;
	int lastBytesSnap;
	int cod4x_bytesPerSec;
	//This counts overhead like headers and retransmissions as well
	int cod4x_bytesTotal;
	int lastBytesSnapTotal;
	int cod4x_bytesPerSecTotal;
}rateTracker_t;


typedef struct
{
	int sequence;    //Highest numbered packet in queue
	int bufferlen;   //Length of the whole buffer
	int acknowledge; //Lowest numbered packet in queue
	int selackoffset; //Used to send not always the same selective acknowledges
	int frame;		 //Current numbered packet which is going to be sent next. Any value in range of acknowledge and sequence
	int windowsize;  //Current size of our window
	fragment_t *fragments;
	int packets;
	msg_t fragmentbuffer;
	cod4x_byte fragmentdata[MAX_FRAGMENT_SIZE];
	rateTracker_t rateInfo;
	int unsentmillipackets;
}framedata_t;

typedef struct
{
	framedata_t txwindow;
	framedata_t rxwindow;
	int sock;
	netadr_t remoteAddress;
	int time;
	int nextacktime;
	int qport;
	int ping;
}netreliablemsg_t;

void ReliableMessagesFrame(netreliablemsg_t *chan, int msec);
void ReliableMessagesReceiveNextFragment(netreliablemsg_t *chan, msg_t* buf);
int ReliableMessageReceive(netreliablemsg_t *chan, cod4x_byte* outdata, int len);
int ReliableMessageReceiveSingleFragment(netreliablemsg_t *chan, cod4x_byte* outdata, int len);
int ReliableMessageSend(netreliablemsg_t *chan, cod4x_byte* indata, int len);
netreliablemsg_t* ReliableMessageSetup(int netsrc, int qport, netadr_t* remote);
void Net_TestingFunction(netreliablemsg_t *chan);
void ReliableMessageDisconnect(netreliablemsg_t *chan);
int ReliableMessageGetSendBufferSize(netreliablemsg_t *chan);
int ReliableMessageGetDataSendWindowSize(netreliablemsg_t *chan);