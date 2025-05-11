typedef struct Modul_Ip_Pozicio_SebessegS
{
  u32 refpoz;
  u32 refseb;
} Modul_Ip_Pozicio_Sebesseg;
typedef struct CsomagSpiS
{
	Modul_Ip_Pozicio_Sebesseg A;
	Modul_Ip_Pozicio_Sebesseg B;
	Modul_Ip_Pozicio_Sebesseg C;
    Modul_Ip_Pozicio_Sebesseg D;
}CsomagSpi;

#define MASK_ADDRES 0xFF000000;
#define MASK_DATA 0x00FFFFFF;
#define sizeCsomag 25;
