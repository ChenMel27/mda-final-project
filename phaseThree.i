# 1 "phaseThree.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "phaseThree.c"
# 1 "hiker.h" 1
# 21 "hiker.h"
extern const unsigned short hikerTiles[16384];


extern const unsigned short hikerPal[256];
# 2 "phaseThree.c" 2
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 48 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 80 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 114 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 3 "phaseThree.c" 2
# 1 "mode0.h" 1
# 51 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 4 "phaseThree.c" 2
# 1 "bgThreeFrontCM.h" 1
# 20 "bgThreeFrontCM.h"
extern const unsigned char bgThreeFrontCMBitmap[131072];
# 5 "phaseThree.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];

struct attr0 {
  u16 regular;
  u16 affine;
  u16 hide;
  u16 double_affine;
  u16 enable_alpha;
  u16 enable_window;
  u16 enable_mosaic;
  u16 fourBpp;
  u16 eightBpp;
  u16 square;
  u16 wide;
  u16 tall;
};

struct attr1 {
  u16 hflip;
  u16 vflip;
  u16 tiny;
  u16 small;
  u16 medium;
  u16 large;
};

struct oam_attrs {
  struct attr0 attr0;
  struct attr1 attr1;
};
# 94 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int worldX, worldY;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    int active;
    u8 oamIndex;
} SPRITE;
# 6 "phaseThree.c" 2
# 1 "phaseThree.h" 1
# 19 "phaseThree.h"
unsigned char colorAtThree(int x, int y);
unsigned char colorAtThreeCheat(int x, int y);
void initPlayerThree();
void updatePlayerThree(int* hOff, int* vOff);
void drawPlayerThree();
void initCountdownTimer(void);
void drawTimer(void);
void updatePlayerPalette();
unsigned short playerPaletteWork[256];
int winPhaseThree;
int leftWallTouched;

void initSnowThree();
void updateSnowThree();
void drawSnowThree();
void resetSnowThree(int i);
# 45 "phaseThree.h"
SPRITE snows[3];
# 7 "phaseThree.c" 2
# 1 "player.h" 1
# 21 "player.h"
extern const unsigned short playerTiles[16384];


extern const unsigned short playerPal[256];
# 8 "phaseThree.c" 2
# 1 "health.h" 1



void initHealth();
void updateHealth();
void drawHealth();
int healthBarFrames[9][2];
# 9 "phaseThree.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 49 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;

void interruptHandler();
# 10 "phaseThree.c" 2
# 1 "healthaudio.h" 1


extern const unsigned int healthaudio_sampleRate;
extern const unsigned int healthaudio_length;
extern const signed char healthaudio_data[];
# 11 "phaseThree.c" 2
# 1 "bgThreeFrontCMCheat.h" 1
# 20 "bgThreeFrontCMCheat.h"
extern const unsigned char bgThreeFrontCMCheatBitmap[131072];
# 12 "phaseThree.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 199 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 13 "phaseThree.c" 2






# 18 "phaseThree.c"
extern int hikerFrameDelay;
extern int hikerFrameCounter;
extern int hikerFrame;
extern int hikerFrames[4];
extern int hOff, vOff;
extern int isDucking;
extern int gameOver;
int leftWallTouched = 0;
int winPhaseThree = 0;
extern SPRITE player;
extern SPRITE health;
volatile int secondsElapsed = 0;
static int slowModeActive = 0;
static int timerPaused = 0;



void initPlayerThree() {
    player.worldX = 20;
    player.worldY = 102;
    player.x = 240 / 2 - 8;
    player.y = 160 / 2 - 16;
    player.width = 17;
    player.height = 24;
    player.oamIndex = 0;
    player.numFrames = 3;
    player.currentFrame = 0;
    player.isAnimating = 1;
    player.direction = 0;
    player.active = 1;
    player.xVel = 1;
    player.yVel = 0;


    DMANow(3, (void*) playerPal, ((u16 *)0x5000200), 512 / 2);
    DMANow(3, (void*) playerTiles, &((CB*) 0x6000000)[4], 32768 / 2);


    for (int i = 0; i < 256; i++) {
        playerPaletteWork[i] = playerPal[i];
    }
}

void updatePlayerThree(int* hOff, int* vOff) {
    static int slowCounter = 0;
    player.isAnimating = 0;


    int leftX = player.worldX;
    int rightX = player.worldX + player.width - 1;
    int topY = player.worldY;
    int bottomY = player.worldY + player.height - 1;


    if (colorAtThreeCheat(leftX, topY) == 0x03 || colorAtThreeCheat(rightX, topY) == 0x03 ||
    colorAtThreeCheat(leftX, bottomY) == 0x03 || colorAtThreeCheat(rightX, bottomY) == 0x03) {
        if (!timerPaused) {
            *(volatile unsigned short*)0x400010A &= ~(1<<7);
            timerPaused = 1;
        }
    }

    if (colorAtThree(leftX, topY) == 0x04 || colorAtThree(rightX, topY) == 0x04 ||
    colorAtThree(leftX, bottomY) == 0x04 || colorAtThree(rightX, bottomY) == 0x04) {
        leftWallTouched = 1;
    }



    slowModeActive = colorAtThree(leftX, topY) == 0x02 || colorAtThree(rightX, topY) == 0x02 || colorAtThree(leftX, bottomY) == 0x02 || colorAtThree(rightX, bottomY) == 0x02;


    int updateMovement = 1;
    if (slowModeActive) {
        slowCounter++;
        if (slowCounter < 4) {
            updateMovement = 0;
        } else {
            updateMovement = 1;
            slowCounter = 0;
        }
    } else {
        slowCounter = 0;
    }


    isDucking = (~(buttons) & ((1<<7)));


    if (!leftWallTouched) {
        if (updateMovement) {
            if ((~(buttons) & ((1<<5))) && player.worldX > 0) {
                player.isAnimating = 1;
                player.direction = 1;
                for (int step = 0; step <= 3; step++) {
                    if ((colorAtThree(leftX - player.xVel, topY - step) != 0x01) &&
                        (colorAtThree(leftX - player.xVel, bottomY - step) != 0x01)) {
                        player.worldX -= player.xVel;
                        player.worldY -= (step > 0) ? (step - 1) : 0;
                        break;
                    }
                }
            }

            if ((~(buttons) & ((1<<4))) && player.worldX < 512 - player.width) {
                player.isAnimating = 1;
                player.direction = 0;
                for (int step = 0; step <= 3; step++) {
                    if ((colorAtThree(rightX + player.xVel, topY - step) != 0x01) &&
                        (colorAtThree(rightX + player.xVel, bottomY - step) != 0x01)) {
                        player.worldX += player.xVel;
                        player.worldY -= step;
                        break;
                    }
                }
            }
        }


        int grounded = 0;

        player.yVel += 1;
        if (player.yVel > 4) player.yVel = 4;

        if (updateMovement) {
            if (player.yVel < 0) {
                for (int i = 0; i < -player.yVel; i++) {
                    if (player.worldY > 0 &&
                        colorAtThree(leftX, player.worldY - 1) != 0x01 &&
                        colorAtThree(rightX, player.worldY - 1) != 0x01) {
                        player.worldY--;
                    } else {
                        player.yVel = 0;
                        break;
                    }
                }
            } else if (player.yVel > 0) {
                for (int i = 0; i < player.yVel; i++) {
                    bottomY = player.worldY + player.height - 1;
                    if (bottomY + 1 < 256 &&
                        colorAtThree(leftX, bottomY + 1) != 0x01 &&
                        colorAtThree(rightX, bottomY + 1) != 0x01) {
                        player.worldY++;
                    } else {
                        player.yVel = 0;
                        grounded = 1;
                        break;
                    }
                }
            } else {
                bottomY = player.worldY + player.height - 1;
                if (colorAtThree(leftX, bottomY + 1) == 0x01 || colorAtThree(rightX, bottomY + 1) == 0x01) {
                    grounded = 1;
                }
            }
        }


        if (!slowModeActive && (!(~(oldButtons) & ((1<<6))) && (~(buttons) & ((1<<6)))) && grounded) {
            player.yVel = -12;
        }
    } else {
        if (updateMovement) {
            if ((~(buttons) & ((1<<5))) && player.worldX > 0) {
                player.isAnimating = 1;
                player.direction = 1;
                for (int step = 0; step <= 3; step++) {
                    if ((colorAtThreeCheat(leftX - player.xVel, topY - step) != 0x01) &&
                        (colorAtThreeCheat(leftX - player.xVel, bottomY - step) != 0x01)) {
                        player.worldX -= player.xVel;
                        player.worldY -= (step > 0) ? (step - 1) : 0;
                        break;
                    }
                }
            }

            if ((~(buttons) & ((1<<4))) && player.worldX < 512 - player.width) {
                player.isAnimating = 1;
                player.direction = 0;
                for (int step = 0; step <= 3; step++) {
                    if ((colorAtThreeCheat(rightX + player.xVel, topY - step) != 0x01) &&
                        (colorAtThreeCheat(rightX + player.xVel, bottomY - step) != 0x01)) {
                        player.worldX += player.xVel;
                        player.worldY -= step;
                        break;
                    }
                }
            }
        }


        int grounded = 0;

        player.yVel += 1;
        if (player.yVel > 4) player.yVel = 4;

        if (updateMovement) {
            if (player.yVel < 0) {
                for (int i = 0; i < -player.yVel; i++) {
                    if (player.worldY > 0 &&
                        colorAtThreeCheat(leftX, player.worldY - 1) != 0x01 &&
                        colorAtThreeCheat(rightX, player.worldY - 1) != 0x01) {
                        player.worldY--;
                    } else {
                        player.yVel = 0;
                        break;
                    }
                }
            } else if (player.yVel > 0) {
                for (int i = 0; i < player.yVel; i++) {
                    bottomY = player.worldY + player.height - 1;
                    if (bottomY + 1 < 256 &&
                        colorAtThreeCheat(leftX, bottomY + 1) != 0x01 &&
                        colorAtThreeCheat(rightX, bottomY + 1) != 0x01) {
                        player.worldY++;
                    } else {
                        player.yVel = 0;
                        grounded = 1;
                        break;
                    }
                }
            } else {
                bottomY = player.worldY + player.height - 1;
                if (colorAtThreeCheat(leftX, bottomY + 1) == 0x01 || colorAtThreeCheat(rightX, bottomY + 1) == 0x01) {
                    grounded = 1;
                }
            }
        }


        if (!slowModeActive && (!(~(oldButtons) & ((1<<6))) && (~(buttons) & ((1<<6)))) && grounded) {
            player.yVel = -12;
        }
    }


    hikerFrameCounter++;
    if (player.isAnimating && hikerFrameCounter > hikerFrameDelay) {
        hikerFrame = (hikerFrame + 1) % player.numFrames;
        hikerFrameCounter = 0;
    } else if (!player.isAnimating) {
        hikerFrame = 0;
        hikerFrameCounter = 0;
    }


    *hOff = player.worldX - (240 / 2 - player.width / 2);
    *vOff = player.worldY - (160 / 2 - player.height / 2);
    if (*hOff < 0) *hOff = 0;
    if (*vOff < 0) *vOff = 0;
    if (*hOff > 512 - 240) *hOff = 512 - 240;
    if (*vOff > 256 - 160) *vOff = 256 - 160;


    if (player.worldX + player.width >= 512 - 1) {
        winPhaseThree = 1;
    }
}



void drawPlayerThree() {
    int screenX = player.worldX - hOff;
    int screenY = player.worldY - vOff;


    shadowOAM[player.oamIndex].attr0 = ((screenY) & 0xFF) | (0<<8) | (0<<13) | (2<<14);
    if (player.direction == 0) {
        shadowOAM[player.oamIndex].attr1 = ((screenX) & 0x1FF) | (2<<14);
    } else if (player.direction == 1) {
        shadowOAM[player.oamIndex].attr1 = ((screenX) & 0x1FF) | (2<<14) | (1<<12);
    }
    if (timerPaused) {
        shadowOAM[player.oamIndex].attr2 = ((((1) * (32) + (hikerFrames[hikerFrame]))) & 0x3FF);
    } else {
        shadowOAM[player.oamIndex].attr2 = ((((5) * (32) + (hikerFrames[hikerFrame]))) & 0x3FF);
    }
}

inline unsigned char colorAtThree(int x, int y) {
    return ((unsigned char*) bgThreeFrontCMBitmap)[((y) * (512) + (x))];
}

inline unsigned char colorAtThreeCheat(int x, int y) {
    return ((unsigned char*) bgThreeFrontCMCheatBitmap)[((y) * (512) + (x))];
}


void initCountdownTimer(void)
{

    *(volatile unsigned short*)0x400010A = 0;
    *(volatile unsigned short*)0x400010E = 0;


    *(volatile unsigned short*)0x4000108 = -0x4000;
    *(volatile unsigned short*)0x400010A = 3 | (1<<7);



    *(volatile unsigned short*)0x400010C = 0;
    *(volatile unsigned short*)0x400010E = (1<<7) | (1<<2);
}


void drawTimer(void)
{

    int secondsPassed = *(volatile unsigned short*)0x400010C;
    int countdown = 20 - secondsPassed;
    if (countdown == 0) {
        gameOver = 1;
    }


    if (countdown < 0) {
        countdown = 0;
    }


    int tens = countdown / 10;
    int ones = countdown % 10;


    int timerX = 180;
    int timerY = 10;


    shadowOAM[50].attr0 = ((timerY) & 0xFF) | (0<<8) | (0<<13) | (0<<14);
    shadowOAM[50].attr1 = ((timerX) & 0x1FF) | (1<<14);
    shadowOAM[50].attr2 = ((((30) * (32) + (tens * 2))) & 0x3FF);


    shadowOAM[51].attr0 = ((timerY) & 0xFF) | (0<<8) | (0<<13) | (0<<14);
    shadowOAM[51].attr1 = ((timerX + 16) & 0x1FF) | (1<<14);
    shadowOAM[51].attr2 = ((((30) * (32) + (ones * 2))) & 0x3FF);
}

void updatePlayerPalette(void)
{

    int secondsPassed = *(volatile unsigned short*)0x400010C;
    int oxygenCountdown = 20 - secondsPassed;
    if (oxygenCountdown < 0)
        oxygenCountdown = 0;




    float factor = oxygenCountdown / 20.0f;



    unsigned short orig = playerPal[1];


    int r = orig & 0x1F;
    int g = (orig >> 5) & 0x1F;
    int b = (orig >> 10) & 0x1F;


    int newR = (int)(r * factor);
    int newG = (int)(g * factor);

    int newB = (int)(b * factor + 31 * (1.0f - factor));

    if (newR > 31) newR = 31;
    if (newG > 31) newG = 31;
    if (newB > 31) newB = 31;


    unsigned short newColor = (newB << 10) | (newG << 5) | newR;
    playerPaletteWork[1] = newColor;


    DMANow(3, &playerPaletteWork[1], &((u16 *)0x5000200)[1], 1);
}



void initSnowThree() {

    srand(1234);
    for (int i = 0; i < 3; i++) {
        snows[i].width = 16;
        snows[i].height = 16;
        snows[i].oamIndex = 120 + i;
        snows[i].active = 1;
        snows[i].yVel = 1;
        resetSnowThree(i);
    }
}

void updateSnowThree() {
    for (int i = 0; i < 3; i++) {
        if (!snows[i].active) continue;

        snows[i].worldY += snows[i].yVel;


        if (collision(snows[i].worldX, snows[i].worldY, 16, 16,
            player.worldX, player.worldY, player.width, player.height)) {
            playSoundB(healthaudio_data, healthaudio_length, 0);
            health.active--;

            if (health.active == 0) gameOver = 1;


            player.worldX = 20;
            player.worldY = 101;
            player.yVel = 0;
            hOff = 0;
            vOff = 0;
            resetSnowThree(i);
        }

        else if (snows[i].worldY > vOff + 160) {
            resetSnowThree(i);
        }
    }
}

void drawSnowThree() {
    for (int i = 0; i < 3; i++) {
        if (!snows[i].active) {
            shadowOAM[snows[i].oamIndex].attr0 = (2<<8);
            continue;
        }

        int sx = snows[i].worldX - hOff;
        int sy = snows[i].worldY - vOff;


        if (sx < -16 || sx > 240 || sy < -16|| sy > 160) {
            shadowOAM[snows[i].oamIndex].attr0 = (2<<8);
        } else {
            shadowOAM[snows[i].oamIndex].attr0 = ((sy) & 0xFF) | (0<<8) | (0<<13) | (0<<14);
            shadowOAM[snows[i].oamIndex].attr1 = ((sx) & 0x1FF) | (1<<14);
            shadowOAM[snows[i].oamIndex].attr2 = ((((14) * (32) + (0))) & 0x3FF);
        }
    }
}

void resetSnowThree(int i) {

    snows[i].worldX = hOff + (rand() % (240 - 16));

    snows[i].worldY = vOff - (rand() % 10) - 16;
}
