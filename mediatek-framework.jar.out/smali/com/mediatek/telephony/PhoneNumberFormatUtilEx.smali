.class public Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;
.super Ljava/lang/Object;
.source "PhoneNumberFormatUtilEx.java"


# static fields
.field public static final AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FORMAT_AUSTRALIA:I = 0x15

.field public static final FORMAT_BRAZIL:I = 0x17

.field public static final FORMAT_CHINA_HONGKONG:I = 0x4

.field public static final FORMAT_CHINA_MACAU:I = 0x5

.field public static final FORMAT_CHINA_MAINLAND:I = 0x3

.field public static FORMAT_COUNTRY_CODES:[Ljava/lang/String; = null

.field public static final FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

.field public static final FORMAT_ENGLAND:I = 0x7

.field public static final FORMAT_FRANCE:I = 0x8

.field public static final FORMAT_GERMANY:I = 0xa

.field public static final FORMAT_INDIA:I = 0xc

.field public static final FORMAT_INDONESIA:I = 0x10

.field public static final FORMAT_ITALY:I = 0x9

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_MALAYSIA:I = 0xe

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_NEW_ZEALAND:I = 0x16

.field public static final FORMAT_POLAND:I = 0x14

.field public static final FORMAT_PORTUGAL:I = 0x13

.field public static final FORMAT_RUSSIAN:I = 0xb

.field public static final FORMAT_SINGAPORE:I = 0xf

.field public static final FORMAT_SPAIN:I = 0xd

.field public static final FORMAT_TAIWAN:I = 0x6

.field public static final FORMAT_THAILAND:I = 0x11

.field public static final FORMAT_TURKEY:I = 0x18

.field public static final FORMAT_UNKNOWN:I = 0x0

.field public static final FORMAT_VIETNAM:I = 0x12

.field public static final FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final Germany_FOUR_PART_REGION_CODES:[I

.field private static final Germany_THREE_PART_REGION_CODES:[I

.field public static final HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final INDIA_THREE_DIGIG_AREA_CODES:[I

.field public static final INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final ITALY_MOBILE_PREFIXS:[I

.field public static final JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field public static final NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PhoneNumberFormatUtilEx"

.field public static final TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

.field public static final THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v3

    const-string v1, "CA"

    aput-object v1, v0, v4

    const-string v1, "AS"

    aput-object v1, v0, v5

    const-string v1, "AI"

    aput-object v1, v0, v6

    const-string v1, "AG"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 119
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "011"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 122
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "010"

    aput-object v1, v0, v3

    const-string v1, "001"

    aput-object v1, v0, v4

    const-string v1, "0041"

    aput-object v1, v0, v5

    const-string v1, "0061"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 135
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "0080"

    aput-object v1, v0, v4

    const-string v1, "0082"

    aput-object v1, v0, v5

    const-string v1, "009"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "002"

    aput-object v1, v0, v3

    const-string v1, "005"

    aput-object v1, v0, v4

    const-string v1, "006"

    aput-object v1, v0, v5

    const-string v1, "007"

    aput-object v1, v0, v6

    const-string v1, "009"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "019"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "40"

    aput-object v1, v0, v4

    const-string v1, "50"

    aput-object v1, v0, v5

    const-string v1, "70"

    aput-object v1, v0, v6

    const-string v1, "90"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 178
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "002"

    aput-object v1, v0, v4

    const-string v1, "008"

    aput-object v1, v0, v5

    const-string v1, "012"

    aput-object v1, v0, v6

    const-string v1, "013"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "018"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "019"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 185
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "007"

    aput-object v1, v0, v4

    const-string v1, "008"

    aput-object v1, v0, v5

    const-string v1, "009"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 192
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "004"

    aput-object v1, v0, v4

    const-string v1, "005"

    aput-object v1, v0, v5

    const-string v1, "006"

    aput-object v1, v0, v6

    const-string v1, "007"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "008"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "009"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 205
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0011"

    aput-object v1, v0, v3

    const-string v1, "0014"

    aput-object v1, v0, v4

    const-string v1, "0015"

    aput-object v1, v0, v5

    const-string v1, "0016"

    aput-object v1, v0, v6

    const-string v1, "0018"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0019"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 215
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0012"

    aput-object v1, v0, v3

    const-string v1, "0014"

    aput-object v1, v0, v4

    const-string v1, "0015"

    aput-object v1, v0, v5

    const-string v1, "0021"

    aput-object v1, v0, v6

    const-string v1, "0023"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0025"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0041"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    .line 224
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "81"

    aput-object v1, v0, v4

    const-string v1, "86"

    aput-object v1, v0, v5

    const-string v1, "852"

    aput-object v1, v0, v6

    const-string v1, "853"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "886"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "44"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "84"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "90"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .line 238
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v3

    const-string v1, "JP"

    aput-object v1, v0, v4

    const-string v1, "CN"

    aput-object v1, v0, v5

    const-string v1, "HK"

    aput-object v1, v0, v6

    const-string v1, "MO"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "VN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "AU"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    .line 1694
    const/16 v0, 0x9f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDIA_THREE_DIGIG_AREA_CODES:[I

    .line 1918
    const/16 v0, 0x2e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_THREE_PART_REGION_CODES:[I

    .line 1928
    const/16 v0, 0xcc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_FOUR_PART_REGION_CODES:[I

    .line 2083
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->ITALY_MOBILE_PREFIXS:[I

    return-void

    .line 1694
    nop

    :array_0
    .array-data 4
        0x78
        0x79
        0x7a
        0x7c
        0x81
        0x82
        0x83
        0x84
        0x87
        0x8d
        0x90
        0x91
        0x97
        0x9a
        0xa0
        0xa1
        0xa4
        0xab
        0xac
        0xaf
        0xb1
        0xb4
        0xb5
        0xb7
        0xb8
        0xba
        0xbf
        0xc2
        0xd4
        0xd7
        0xd9
        0xe6
        0xe7
        0xe9
        0xf0
        0xf1
        0xfa
        0xfb
        0xfd
        0x101
        0x104
        0x105
        0x109
        0x10c
        0x116
        0x119
        0x11d
        0x11e
        0x120
        0x123
        0x126
        0x146
        0x155
        0x156
        0x157
        0x161
        0x162
        0x168
        0x169
        0x16c
        0x170
        0x171
        0x172
        0x174
        0x175
        0x176
        0x178
        0x17d
        0x181
        0x185
        0x19d
        0x1a0
        0x1a5
        0x1a6
        0x1a7
        0x1a8
        0x1ab
        0x1af
        0x1b3
        0x1c3
        0x1c4
        0x1cd
        0x1ce
        0x1d4
        0x1d5
        0x1d6
        0x1d7
        0x1da
        0x1db
        0x1dc
        0x1dd
        0x1de
        0x1df
        0x1e0
        0x1e1
        0x1e3
        0x1e4
        0x1e5
        0x1e7
        0x1ea
        0x1eb
        0x1ee
        0x1ef
        0x1f0
        0x1f1
        0x200
        0x203
        0x20a
        0x214
        0x217
        0x21e
        0x224
        0x227
        0x232
        0x235
        0x23b
        0x245
        0x24f
        0x253
        0x264
        0x26d
        0x277
        0x281
        0x28b
        0x291
        0x295
        0x297
        0x29f
        0x2a2
        0x2a8
        0x2c8
        0x2d1
        0x2d4
        0x2db
        0x2dd
        0x2de
        0x2e8
        0x2eb
        0x2ef
        0x2f3
        0x2f9
        0x303
        0x314
        0x330
        0x334
        0x335
        0x338
        0x33f
        0x340
        0x344
        0x35d
        0x35f
        0x362
        0x366
        0x36d
        0x36e
        0x373
        0x374
        0x37b
    .end array-data

    .line 1918
    :array_1
    .array-data 4
        0xca
        0xcb
        0xd0
        0xd1
        0xd4
        0xd6
        0xdd
        0xe4
        0xea
        0xf9
        0x136
        0x14f
        0x154
        0x159
        0x16d
        0x177
        0x181
        0x18b
        0x1c9
        0x1ca
        0x1cb
        0x2bc
        0x2c5
        0x2c6
        0x2d8
        0x2d9
        0x2ed
        0x2f7
        0x301
        0x30a
        0x30b
        0x312
        0x313
        0x314
        0x315
        0x318
        0x31e
        0x31f
        0x320
        0x368
        0x36b
        0x36f
        0x384
        0x386
        0x387
        0x38a
    .end array-data

    .line 1928
    :array_2
    .array-data 4
        0xce5
        0xce6
        0xce7
        0xce8
        0xcea
        0xceb
        0xcf9
        0xcfa
        0xcff
        0xd00
        0xd01
        0xd03
        0xd04
        0xd06
        0xd07
        0xd09
        0xd0a
        0xd0d
        0xd0e
        0xd10
        0xd12
        0xd21
        0xd22
        0xd24
        0xd26
        0xd2b
        0xd2c
        0xd2f
        0xd31
        0xd32
        0xd33
        0xd35
        0xd36
        0xd39
        0xd3a
        0xd3f
        0xd42
        0xd43
        0xd5d
        0xd5f
        0xd61
        0xd67
        0xd69
        0xd6b
        0xd6d
        0xd71
        0xd73
        0xd75
        0xd77
        0xd78
        0xd85
        0xd86
        0xd88
        0xd8a
        0xd8f
        0xd91
        0xd93
        0xd94
        0xda3
        0xda5
        0xda6
        0xda8
        0xdad
        0xdb0
        0xdc1
        0xdc2
        0xdc3
        0xdc5
        0xdc8
        0xdc9
        0xdcb
        0xdcd
        0xdd1
        0xdd5
        0xdd6
        0xdd8
        0xdda
        0xde9
        0xdea
        0xdeb
        0xdec
        0xdf3
        0xdf5
        0xdf6
        0xdf8
        0xdfa
        0xdfd
        0xdff
        0xe01
        0xe02
        0xe04
        0xe07
        0xe08
        0xe0a
        0xe0c
        0xe11
        0xe13
        0xe15
        0xe16
        0xe25
        0xe26
        0xe27
        0xe28
        0xe2a
        0xe2b
        0xe2c
        0xe2d
        0xe2f
        0xe30
        0xe32
        0xe33
        0xe34
        0xe39
        0xe3b
        0xe3c
        0xe3f
        0xe4d
        0xe4f
        0xe57
        0xe58
        0xe5b
        0xe5d
        0xe5f
        0xe60
        0xe61
        0xe62
        0xe63
        0xe65
        0xe66
        0xe6b
        0xe6d
        0xe6f
        0xe89
        0xe8a
        0xe8b
        0xe8c
        0xe8d
        0xe8e
        0xe8f
        0xe93
        0xe95
        0xe97
        0xe99
        0xe9d
        0xea0
        0xea1
        0xeb1
        0xeb2
        0xeb3
        0xeb4
        0xeb5
        0xebb
        0xebc
        0xebd
        0xebe
        0xeed
        0xef7
        0xefa
        0xefe
        0xf01
        0xf03
        0xf04
        0xf07
        0xf1f
        0xf22
        0xf24
        0xf25
        0xf29
        0xf2b
        0xf2e
        0xf3d
        0xf51
        0xf53
        0xf55
        0xf58
        0xf5b
        0xf5d
        0xf5f
        0xf61
        0xf65
        0xf66
        0xf67
        0xf68
        0xf6a
        0xf6b
        0xf6d
        0xf79
        0xf7a
        0xf7b
        0xf7c
        0xf7d
        0xf7e
        0xf7f
        0xf80
        0xf81
        0xf83
        0xf85
        0xf88
        0xf8d
        0xf90
        0xf97
        0xf9a
        0xf9c
        0xf9d
    .end array-data

    .line 2083
    :array_3
    .array-data 4
        0x148
        0x149
        0x14a
        0x14d
        0x14e
        0x14f
        0x150
        0x151
        0x152
        0x153
        0x15b
        0x15c
        0x15d
        0x168
        0x170
        0x17c
        0x184
        0x185
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIndiaNumber(CCCC)I
    .locals 11
    .param p0, "c1"    # C
    .param p1, "c2"    # C
    .param p2, "c3"    # C
    .param p3, "c4"    # C

    .prologue
    const/16 v10, 0x37

    const/16 v9, 0x31

    const/16 v8, 0x30

    const/16 v7, 0x32

    const/16 v6, 0x27

    .line 1723
    const/4 v1, -0x1

    .line 1724
    .local v1, "result":I
    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, p3, -0x30

    add-int v3, v4, v5

    .line 1725
    .local v3, "temp":I
    const/16 v4, 0x39

    if-ne p0, v4, :cond_1

    .line 1726
    const/4 v1, 0x0

    .line 1749
    :cond_0
    :goto_0
    if-nez v1, :cond_1f

    move v2, v1

    .line 1767
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_1
    return v2

    .line 1727
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    const/16 v4, 0x38

    if-ne p0, v4, :cond_b

    .line 1728
    if-ne p1, v8, :cond_3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_a

    if-lt v3, v7, :cond_2

    const/16 v4, 0x3c

    if-le v3, v4, :cond_a

    :cond_2
    const/16 v4, 0x50

    if-ge v3, v4, :cond_a

    :cond_3
    if-ne p1, v9, :cond_5

    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    const/16 v4, 0x14

    if-lt v3, v4, :cond_4

    const/16 v4, 0x1d

    if-le v3, v4, :cond_a

    :cond_4
    const/16 v4, 0x28

    if-lt v3, v4, :cond_5

    if-le v3, v9, :cond_a

    :cond_5
    if-ne p1, v10, :cond_6

    const/16 v4, 0x5a

    if-ge v3, v4, :cond_a

    const/16 v4, 0x45

    if-eq v3, v4, :cond_a

    :cond_6
    const/16 v4, 0x38

    if-ne p1, v4, :cond_8

    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    const/16 v4, 0x11

    if-eq v3, v4, :cond_a

    const/16 v4, 0x19

    if-lt v3, v4, :cond_7

    const/16 v4, 0x1c

    if-le v3, v4, :cond_a

    :cond_7
    const/16 v4, 0x2c

    if-eq v3, v4, :cond_a

    const/16 v4, 0x35

    if-eq v3, v4, :cond_a

    const/16 v4, 0x5a

    if-ge v3, v4, :cond_a

    :cond_8
    const/16 v4, 0x39

    if-ne p2, v4, :cond_0

    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    const/16 v4, 0x17

    if-eq v3, v4, :cond_a

    if-eq v3, v6, :cond_a

    if-lt v3, v7, :cond_9

    const/16 v4, 0x3e

    if-le v3, v4, :cond_a

    :cond_9
    const/16 v4, 0x43

    if-eq v3, v4, :cond_a

    const/16 v4, 0x44

    if-eq v3, v4, :cond_a

    const/16 v4, 0x46

    if-lt v3, v4, :cond_0

    .line 1733
    :cond_a
    const/4 v1, 0x0

    goto :goto_0

    .line 1735
    :cond_b
    if-ne p0, v10, :cond_0

    .line 1737
    if-eq p1, v8, :cond_1e

    if-ne p1, v7, :cond_e

    if-eqz v3, :cond_1e

    const/4 v4, 0x4

    if-lt v3, v4, :cond_c

    const/16 v4, 0x9

    if-le v3, v4, :cond_1e

    :cond_c
    if-eq v3, v7, :cond_1e

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4b

    if-lt v3, v4, :cond_d

    const/16 v4, 0x4e

    if-le v3, v4, :cond_1e

    :cond_d
    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1e

    :cond_e
    const/16 v4, 0x33

    if-ne p1, v4, :cond_f

    const/16 v4, 0x49

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x60

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x62

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x63

    if-eq v3, v4, :cond_1e

    :cond_f
    const/16 v4, 0x34

    if-ne p1, v4, :cond_11

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1e

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1e

    const/16 v4, 0xf

    if-lt v3, v4, :cond_10

    const/16 v4, 0x13

    if-le v3, v4, :cond_1e

    :cond_10
    const/16 v4, 0x1c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_1e

    if-eq v3, v6, :cond_1e

    const/16 v4, 0x53

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x58

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x59

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x62

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x63

    if-eq v3, v4, :cond_1e

    :cond_11
    const/16 v4, 0x35

    if-ne p1, v4, :cond_14

    const/4 v4, 0x4

    if-le v3, v4, :cond_1e

    if-eq v3, v9, :cond_1e

    if-eq v3, v7, :cond_1e

    const/16 v4, 0x42

    if-lt v3, v4, :cond_12

    const/16 v4, 0x45

    if-le v3, v4, :cond_1e

    :cond_12
    const/16 v4, 0x4f

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x57

    if-lt v3, v4, :cond_13

    const/16 v4, 0x59

    if-le v3, v4, :cond_1e

    :cond_13
    const/16 v4, 0x61

    if-ge v3, v4, :cond_1e

    :cond_14
    const/16 v4, 0x36

    if-ne p1, v4, :cond_17

    if-eqz v3, :cond_1e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x14

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_1e

    if-eq v3, v6, :cond_1e

    const/16 v4, 0x36

    if-eq v3, v4, :cond_1e

    if-eq v3, v10, :cond_1e

    const/16 v4, 0x41

    if-lt v3, v4, :cond_15

    const/16 v4, 0x45

    if-le v3, v4, :cond_1e

    :cond_15
    const/16 v4, 0x4c

    if-lt v3, v4, :cond_16

    const/16 v4, 0x4f

    if-le v3, v4, :cond_1e

    :cond_16
    const/16 v4, 0x60

    if-ge v3, v4, :cond_1e

    :cond_17
    if-ne p1, v10, :cond_19

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x23

    if-lt v3, v4, :cond_18

    if-le v3, v6, :cond_1e

    :cond_18
    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x5f

    if-ge v3, v4, :cond_1e

    :cond_19
    const/16 v4, 0x38

    if-ne p1, v4, :cond_1c

    if-gt v3, v6, :cond_1c

    if-eqz v3, :cond_1e

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1a

    const/16 v4, 0x9

    if-le v3, v4, :cond_1e

    :cond_1a
    const/16 v4, 0xe

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_1b

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1e

    :cond_1b
    const/16 v4, 0x25

    if-lt v3, v4, :cond_1c

    if-le v3, v6, :cond_1e

    :cond_1c
    const/16 v4, 0x38

    if-ne p1, v4, :cond_0

    if-le v3, v6, :cond_0

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x45

    if-lt v3, v4, :cond_1d

    const/16 v4, 0x4f

    if-le v3, v4, :cond_1e

    :cond_1d
    const/16 v4, 0x5a

    if-lt v3, v4, :cond_0

    .line 1746
    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1752
    :cond_1f
    if-ne p0, v9, :cond_20

    if-eq p1, v9, :cond_25

    :cond_20
    if-ne p0, v7, :cond_21

    if-eq p1, v8, :cond_25

    if-eq p1, v7, :cond_25

    :cond_21
    const/16 v4, 0x33

    if-ne p0, v4, :cond_22

    const/16 v4, 0x33

    if-eq p1, v4, :cond_25

    :cond_22
    const/16 v4, 0x34

    if-ne p0, v4, :cond_23

    if-eq p1, v8, :cond_25

    const/16 v4, 0x34

    if-eq p1, v4, :cond_25

    :cond_23
    if-ne p0, v10, :cond_24

    const/16 v4, 0x39

    if-eq p1, v4, :cond_25

    :cond_24
    const/16 v4, 0x38

    if-ne p0, v4, :cond_26

    if-ne p1, v8, :cond_26

    .line 1758
    :cond_25
    const/4 v1, 0x2

    :goto_2
    move v2, v1

    .line 1767
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto/16 :goto_1

    .line 1760
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_26
    add-int/lit8 v4, p0, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/lit8 v5, p1, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    add-int/lit8 v5, p2, -0x30

    add-int v0, v4, v5

    .line 1761
    .local v0, "key":I
    sget-object v4, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDIA_THREE_DIGIG_AREA_CODES:[I

    invoke-static {v4, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_27

    .line 1762
    const/4 v1, 0x3

    goto :goto_2

    .line 1764
    :cond_27
    const/4 v1, 0x4

    goto :goto_2
.end method

.method static checkInputNormalNumber(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 398
    const/4 v2, 0x1

    .line 400
    .local v2, "result":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 401
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 402
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_0
    const/16 v3, 0x2a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x23

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    .line 403
    const/4 v2, 0x0

    .line 407
    .end local v0    # "c":C
    :cond_1
    return v2

    .line 400
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    const/16 v9, 0x30

    .line 1264
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1268
    .local v3, "length":I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1269
    .local v0, "dashPositions":[I
    const/4 v4, 0x0

    .line 1270
    .local v4, "numDashes":I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1272
    .local v6, "phoneNumPosition":I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_5

    .line 1273
    :cond_0
    move v2, v6

    .line 1274
    .local v2, "index":I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1275
    add-int/lit8 v2, v2, 0x1

    .line 1278
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x34

    if-ne v8, v9, :cond_4

    .line 1280
    add-int/lit8 v8, v2, 0x5

    if-le v3, v8, :cond_9

    .line 1281
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .local v5, "numDashes":I
    add-int/lit8 v8, v2, 0x3

    aput v8, v0, v4

    .line 1284
    :goto_1
    add-int/lit8 v8, v2, 0x8

    if-le v3, v8, :cond_6

    .line 1285
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x6

    aput v8, v0, v5

    .line 1306
    .end local v2    # "index":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_7

    .line 1307
    aget v7, v0, v1

    .line 1308
    .local v7, "pos":I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1270
    .end local v1    # "i":I
    .end local v6    # "phoneNumPosition":I
    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1289
    .restart local v2    # "index":I
    .restart local v6    # "phoneNumPosition":I
    :cond_4
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_8

    .line 1290
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v2, 0x1

    aput v8, v0, v4

    .line 1293
    :goto_4
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_6

    .line 1294
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    goto :goto_2

    .line 1300
    .end local v2    # "index":I
    :cond_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(I)V

    .line 1301
    add-int/lit8 v8, v6, 0x8

    if-ne v3, v8, :cond_2

    .line 1302
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v6, 0x4

    aput v8, v0, v4

    :cond_6
    move v4, v5

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_2

    .line 1310
    .restart local v1    # "i":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1    # "i":I
    .restart local v2    # "index":I
    :cond_8
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_9
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1
.end method

.method private static formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    const/16 v9, 0x30

    .line 1167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1171
    .local v3, "length":I
    const/4 v8, 0x5

    new-array v0, v8, [I

    .line 1172
    .local v0, "dashPositions":[I
    const/4 v4, 0x0

    .line 1173
    .local v4, "numDashes":I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1175
    .local v6, "phoneNumPosition":I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_6

    .line 1176
    :cond_0
    move v2, v6

    .line 1177
    .local v2, "index":I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_8

    .line 1178
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .local v5, "numDashes":I
    add-int/lit8 v8, v6, 0x1

    aput v8, v0, v4

    .line 1179
    add-int/lit8 v2, v2, 0x1

    .line 1181
    :goto_1
    add-int/lit8 v8, v2, 0x3

    if-le v3, v8, :cond_1

    .line 1182
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v5

    move v5, v4

    .line 1184
    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_1
    add-int/lit8 v8, v2, 0x7

    if-le v3, v8, :cond_4

    add-int/lit8 v8, v2, 0xa

    if-gt v3, v8, :cond_4

    .line 1185
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x6

    aput v8, v0, v5

    .line 1194
    .end local v2    # "index":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_7

    .line 1195
    aget v7, v0, v1

    .line 1196
    .local v7, "pos":I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1173
    .end local v1    # "i":I
    .end local v6    # "phoneNumPosition":I
    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1186
    .end local v4    # "numDashes":I
    .restart local v2    # "index":I
    .restart local v5    # "numDashes":I
    .restart local v6    # "phoneNumPosition":I
    :cond_4
    add-int/lit8 v8, v2, 0xa

    if-le v3, v8, :cond_5

    .line 1187
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x4

    aput v8, v0, v5

    .line 1188
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v2, 0x8

    aput v8, v0, v4

    .end local v2    # "index":I
    :cond_5
    :goto_4
    move v4, v5

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_2

    .line 1190
    :cond_6
    add-int/lit8 v8, v6, 0x5

    if-le v3, v8, :cond_2

    .line 1191
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v6, 0x4

    aput v8, v0, v4

    goto :goto_4

    .line 1198
    .end local v5    # "numDashes":I
    .restart local v1    # "i":I
    .restart local v4    # "numDashes":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1    # "i":I
    .restart local v2    # "index":I
    :cond_8
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1
.end method

.method private static formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 14
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    const/16 v13, 0x32

    const/16 v12, 0x31

    const/16 v11, 0x30

    .line 818
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 822
    .local v5, "length":I
    const/4 v10, 0x2

    new-array v2, v10, [I

    .line 823
    .local v2, "dashPositions":[I
    const/4 v6, 0x0

    .line 824
    .local v6, "numDashes":I
    const/4 v10, -0x1

    if-ne p1, v10, :cond_5

    const/4 v8, 0x0

    .line 826
    .local v8, "phoneNumPosition":I
    :goto_0
    if-gtz v8, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_9

    .line 827
    :cond_0
    move v4, v8

    .line 828
    .local v4, "index":I
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_1

    .line 829
    add-int/lit8 v4, v4, 0x1

    .line 831
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 832
    .local v0, "c1":C
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 835
    .local v1, "c2":C
    if-ne v0, v12, :cond_2

    if-eq v1, v11, :cond_3

    :cond_2
    if-ne v0, v13, :cond_6

    .line 836
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .local v7, "numDashes":I
    add-int/lit8 v10, v4, 0x2

    aput v10, v2, v6

    move v6, v7

    .line 879
    .end local v4    # "index":I
    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_d

    .line 880
    aget v9, v2, v3

    .line 881
    .local v9, "pos":I
    add-int v10, v9, v3

    add-int v11, v9, v3

    const-string v12, "-"

    invoke-virtual {p0, v10, v11, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 824
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v3    # "i":I
    .end local v8    # "phoneNumPosition":I
    .end local v9    # "pos":I
    :cond_5
    add-int/lit8 v8, p1, 0x1

    goto :goto_0

    .line 837
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v4    # "index":I
    .restart local v8    # "phoneNumPosition":I
    :cond_6
    if-ne v0, v12, :cond_7

    .line 840
    add-int/lit8 v10, v4, 0x4

    if-le v5, v10, :cond_f

    .line 841
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    .line 844
    :goto_3
    add-int/lit8 v10, v4, 0x8

    if-le v5, v10, :cond_8

    .line 845
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v4, 0x7

    aput v10, v2, v7

    goto :goto_1

    .line 848
    :cond_7
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    .end local v4    # "index":I
    :cond_8
    :goto_4
    move v6, v7

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 851
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_9
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 852
    .restart local v0    # "c1":C
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 853
    .restart local v1    # "c2":C
    if-ne v0, v12, :cond_a

    if-eq v1, v11, :cond_a

    .line 856
    add-int/lit8 v10, v8, 0x4

    if-le v5, v10, :cond_e

    .line 857
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v8, 0x3

    aput v10, v2, v6

    .line 860
    :goto_5
    add-int/lit8 v10, v8, 0x8

    if-le v5, v10, :cond_8

    .line 861
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v8, 0x7

    aput v10, v2, v7

    goto :goto_1

    .line 863
    :cond_a
    if-ne v0, v12, :cond_b

    if-ne v1, v11, :cond_b

    .line 865
    add-int/lit8 v10, v8, 0x3

    if-le v5, v10, :cond_4

    .line 866
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v8, 0x2

    aput v10, v2, v6

    move v6, v7

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 870
    :cond_b
    add-int/lit8 v10, v8, 0x8

    if-le v5, v10, :cond_4

    .line 871
    if-ne v0, v13, :cond_c

    .line 872
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v8, 0x2

    aput v10, v2, v6

    move v6, v7

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 874
    :cond_c
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v8, 0x3

    aput v10, v2, v6

    goto :goto_4

    .line 883
    .end local v7    # "numDashes":I
    .restart local v3    # "i":I
    .restart local v6    # "numDashes":I
    :cond_d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .end local v3    # "i":I
    :cond_e
    move v7, v6

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto :goto_5

    .end local v7    # "numDashes":I
    .restart local v4    # "index":I
    .restart local v6    # "numDashes":I
    :cond_f
    move v7, v6

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto :goto_3
.end method

.method private static formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 20
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 2290
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 2294
    .local v12, "length":I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 2295
    .local v8, "dashPositions":[I
    const/4 v13, 0x0

    .line 2296
    .local v13, "numDashes":I
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/4 v15, 0x0

    .line 2297
    .local v15, "phoneNumPosition":I
    :goto_0
    if-gtz v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 2298
    :cond_0
    move v10, v15

    .line 2299
    .local v10, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2300
    add-int/lit8 v10, v10, 0x1

    .line 2302
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2303
    .local v4, "c1":C
    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 2304
    .local v5, "c2":C
    add-int/lit8 v17, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2306
    .local v6, "c3":C
    const/16 v17, 0x37

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    .line 2308
    add-int/lit8 v17, v10, 0x5

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    .line 2309
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .local v14, "numDashes":I
    add-int/lit8 v17, v10, 0x4

    aput v17, v8, v13

    move v13, v14

    .line 2368
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "c3":C
    .end local v10    # "index":I
    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v13, :cond_f

    .line 2369
    aget v16, v8, v9

    .line 2370
    .local v16, "pos":I
    add-int v17, v16, v9

    add-int v18, v16, v9

    const-string v19, "-"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2368
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2296
    .end local v9    # "i":I
    .end local v15    # "phoneNumPosition":I
    .end local v16    # "pos":I
    :cond_3
    add-int/lit8 v15, p1, 0x1

    goto :goto_0

    .line 2311
    .restart local v4    # "c1":C
    .restart local v5    # "c2":C
    .restart local v6    # "c3":C
    .restart local v10    # "index":I
    .restart local v15    # "phoneNumPosition":I
    :cond_4
    const/16 v17, 0x32

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 2313
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v10, 0x2

    aput v17, v8, v13

    .line 2315
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2316
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto :goto_1

    .line 2318
    :cond_5
    const/16 v17, 0x31

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 2319
    add-int/lit8 v17, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2320
    .local v7, "c4":C
    add-int/lit8 v17, v4, -0x30

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    add-int/lit8 v18, v5, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int v17, v17, v18

    add-int/lit8 v18, v6, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int v17, v17, v18

    add-int v11, v17, v7

    .line 2321
    .local v11, "key":I
    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v5, v0, :cond_6

    const/16 v17, 0x31

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    .line 2323
    :cond_6
    add-int/lit8 v17, v10, 0x4

    move/from16 v0, v17

    if-le v12, v0, :cond_11

    .line 2324
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v10, 0x3

    aput v17, v8, v13

    .line 2327
    :goto_3
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2328
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto :goto_1

    .line 2330
    :cond_7
    const/16 v17, 0x56b

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x603

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x6a1

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x6e8

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    const/16 v17, 0x79a

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    .line 2333
    add-int/lit8 v17, v10, 0x5

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    .line 2334
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v10, 0x4

    aput v17, v8, v13

    move v13, v14

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    goto/16 :goto_1

    .line 2338
    :cond_8
    add-int/lit8 v17, v10, 0x6

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    .line 2339
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v10, 0x5

    aput v17, v8, v13

    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "c3":C
    .end local v7    # "c4":C
    .end local v10    # "index":I
    .end local v11    # "key":I
    :cond_9
    :goto_4
    move v13, v14

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    goto/16 :goto_1

    .line 2342
    .restart local v4    # "c1":C
    .restart local v5    # "c2":C
    .restart local v6    # "c3":C
    .restart local v10    # "index":I
    :cond_a
    const/16 v17, 0x33

    move/from16 v0, v17

    if-eq v4, v0, :cond_b

    const/16 v17, 0x38

    move/from16 v0, v17

    if-eq v4, v0, :cond_b

    const/16 v17, 0x39

    move/from16 v0, v17

    if-ne v4, v0, :cond_c

    .line 2344
    :cond_b
    add-int/lit8 v17, v10, 0x4

    move/from16 v0, v17

    if-le v12, v0, :cond_10

    .line 2345
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v10, 0x3

    aput v17, v8, v13

    .line 2348
    :goto_5
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2349
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto/16 :goto_1

    .line 2354
    :cond_c
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v10, 0x2

    aput v17, v8, v13

    .line 2356
    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_9

    .line 2357
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    add-int/lit8 v17, v10, 0x6

    aput v17, v8, v14

    goto/16 :goto_1

    .line 2361
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "c3":C
    .end local v10    # "index":I
    :cond_d
    add-int/lit8 v17, v15, 0x4

    move/from16 v0, v17

    if-le v12, v0, :cond_e

    add-int/lit8 v17, v15, 0x8

    move/from16 v0, v17

    if-ge v12, v0, :cond_e

    .line 2362
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v15, 0x3

    aput v17, v8, v13

    move v13, v14

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    goto/16 :goto_1

    .line 2363
    :cond_e
    add-int/lit8 v17, v15, 0x8

    move/from16 v0, v17

    if-lt v12, v0, :cond_2

    .line 2364
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v17, v15, 0x4

    aput v17, v8, v13

    goto :goto_4

    .line 2372
    .end local v14    # "numDashes":I
    .restart local v9    # "i":I
    .restart local v13    # "numDashes":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .end local v9    # "i":I
    .restart local v4    # "c1":C
    .restart local v5    # "c2":C
    .restart local v6    # "c3":C
    .restart local v10    # "index":I
    :cond_10
    move v14, v13

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    goto :goto_5

    .end local v14    # "numDashes":I
    .restart local v7    # "c4":C
    .restart local v11    # "key":I
    .restart local v13    # "numDashes":I
    :cond_11
    move v14, v13

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    goto/16 :goto_3
.end method

.method private static formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 2213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 2217
    .local v4, "length":I
    const/4 v9, 0x4

    new-array v1, v9, [I

    .line 2218
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 2219
    .local v5, "numDashes":I
    const/4 v9, -0x1

    if-ne p1, v9, :cond_7

    const/4 v7, 0x0

    .line 2220
    .local v7, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 2221
    .local v0, "c":I
    if-gtz v7, :cond_0

    const/16 v9, 0x30

    if-eq v0, v9, :cond_0

    const/16 v9, 0x34

    if-eq v0, v9, :cond_0

    const/16 v9, 0x35

    if-eq v0, v9, :cond_0

    const/16 v9, 0x37

    if-eq v0, v9, :cond_0

    const/16 v9, 0x39

    if-ne v0, v9, :cond_6

    .line 2222
    :cond_0
    move v3, v7

    .line 2223
    .local v3, "index":I
    if-nez v7, :cond_1

    const/16 v9, 0x30

    if-eq v0, v9, :cond_2

    const/16 v9, 0x34

    if-eq v0, v9, :cond_2

    const/16 v9, 0x35

    if-eq v0, v9, :cond_2

    const/16 v9, 0x37

    if-eq v0, v9, :cond_2

    const/16 v9, 0x39

    if-eq v0, v9, :cond_2

    :cond_1
    if-lez v7, :cond_3

    const/16 v9, 0x30

    if-ne v0, v9, :cond_3

    .line 2224
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 2227
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    add-int/lit8 v9, v3, 0x1

    aput v9, v1, v5

    .line 2229
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_4

    .line 2230
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v9, v3, 0x3

    aput v9, v1, v6

    move v6, v5

    .line 2233
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_4
    add-int/lit8 v9, v3, 0x6

    if-le v4, v9, :cond_5

    .line 2234
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v9, v3, 0x5

    aput v9, v1, v6

    move v6, v5

    .line 2237
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_5
    add-int/lit8 v9, v3, 0x8

    if-le v4, v9, :cond_9

    .line 2238
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v9, v3, 0x7

    aput v9, v1, v6

    .line 2242
    .end local v3    # "index":I
    :cond_6
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_8

    .line 2243
    aget v8, v1, v2

    .line 2244
    .local v8, "pos":I
    add-int v9, v8, v2

    add-int v10, v8, v2

    const-string v11, "-"

    invoke-virtual {p0, v9, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2219
    .end local v0    # "c":I
    .end local v2    # "i":I
    .end local v7    # "phoneNumPosition":I
    .end local v8    # "pos":I
    :cond_7
    add-int/lit8 v7, p1, 0x1

    goto :goto_0

    .line 2246
    .restart local v0    # "c":I
    .restart local v2    # "i":I
    .restart local v7    # "phoneNumPosition":I
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v2    # "i":I
    .end local v5    # "numDashes":I
    .restart local v3    # "index":I
    .restart local v6    # "numDashes":I
    :cond_9
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1
.end method

.method private static formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 21
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1990
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 1994
    .local v13, "length":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [I

    .line 1995
    .local v8, "dashPositions":[I
    const/4 v14, 0x0

    .line 1996
    .local v14, "numDashes":I
    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v16, 0x0

    .line 1998
    .local v16, "phoneNumPosition":I
    :goto_0
    if-gtz v16, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1999
    :cond_0
    move/from16 v10, v16

    .line 2000
    .local v10, "index":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 2001
    add-int/lit8 v10, v10, 0x1

    .line 2003
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 2004
    .local v4, "c1":C
    add-int/lit8 v18, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 2006
    .local v5, "c2":C
    const/16 v18, 0x31

    move/from16 v0, v18

    if-ne v4, v0, :cond_5

    .line 2008
    add-int/lit8 v18, v10, 0x4

    move/from16 v0, v18

    if-le v13, v0, :cond_16

    .line 2009
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "numDashes":I
    .local v15, "numDashes":I
    add-int/lit8 v18, v10, 0x3

    aput v18, v8, v14

    .line 2012
    :goto_1
    const/16 v18, 0x35

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x36

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x37

    move/from16 v0, v18

    if-ne v5, v0, :cond_10

    .line 2014
    :cond_2
    add-int/lit8 v18, v10, 0xa

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2015
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v10, 0x9

    aput v18, v8, v15

    .line 2070
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v10    # "index":I
    :cond_3
    :goto_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v14, :cond_11

    .line 2071
    aget v17, v8, v9

    .line 2072
    .local v17, "pos":I
    add-int v18, v17, v9

    add-int v19, v17, v9

    const-string v20, "-"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1996
    .end local v9    # "i":I
    .end local v16    # "phoneNumPosition":I
    .end local v17    # "pos":I
    :cond_4
    add-int/lit8 v16, p1, 0x1

    goto/16 :goto_0

    .line 2019
    .restart local v4    # "c1":C
    .restart local v5    # "c2":C
    .restart local v10    # "index":I
    .restart local v16    # "phoneNumPosition":I
    :cond_5
    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    const/16 v18, 0x30

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    :cond_6
    const/16 v18, 0x34

    move/from16 v0, v18

    if-ne v4, v0, :cond_7

    const/16 v18, 0x30

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    :cond_7
    const/16 v18, 0x36

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    const/16 v18, 0x39

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    :cond_8
    const/16 v18, 0x38

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    const/16 v18, 0x39

    move/from16 v0, v18

    if-ne v5, v0, :cond_a

    .line 2022
    :cond_9
    add-int/lit8 v18, v10, 0x4

    move/from16 v0, v18

    if-le v13, v0, :cond_15

    .line 2023
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    add-int/lit8 v18, v10, 0x2

    aput v18, v8, v14

    .line 2026
    :goto_4
    add-int/lit8 v18, v10, 0x6

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2027
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v10, 0x5

    aput v18, v8, v15

    goto :goto_2

    .line 2029
    :cond_a
    add-int/lit8 v18, v10, 0x3

    move/from16 v0, v18

    if-le v13, v0, :cond_3

    .line 2030
    add-int/lit8 v18, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 2031
    .local v6, "c3":C
    add-int/lit8 v18, v10, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 2032
    .local v7, "c4":C
    add-int/lit8 v18, v4, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v19, v5, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    add-int/lit8 v19, v6, -0x30

    add-int v11, v18, v19

    .line 2033
    .local v11, "key3":I
    mul-int/lit8 v18, v11, 0xa

    add-int/lit8 v19, v7, -0x30

    add-int v12, v18, v19

    .line 2035
    .local v12, "key4":I
    const/16 v18, 0x31

    move/from16 v0, v18

    if-eq v6, v0, :cond_b

    sget-object v18, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_THREE_PART_REGION_CODES:[I

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v18

    if-ltz v18, :cond_c

    const/16 v18, 0xd4

    move/from16 v0, v18

    if-ne v11, v0, :cond_b

    const/16 v18, 0xd4

    move/from16 v0, v18

    if-ne v11, v0, :cond_c

    const/16 v18, 0x39

    move/from16 v0, v18

    if-eq v7, v0, :cond_c

    .line 2037
    :cond_b
    add-int/lit8 v18, v10, 0x4

    move/from16 v0, v18

    if-le v13, v0, :cond_14

    .line 2038
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    add-int/lit8 v18, v10, 0x3

    aput v18, v8, v14

    .line 2041
    :goto_5
    add-int/lit8 v18, v10, 0x7

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2042
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v10, 0x6

    aput v18, v8, v15

    goto/16 :goto_2

    .line 2045
    :cond_c
    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v4, v0, :cond_d

    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v4, v0, :cond_e

    sget-object v18, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->Germany_FOUR_PART_REGION_CODES:[I

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v18

    if-ltz v18, :cond_e

    .line 2047
    :cond_d
    add-int/lit8 v18, v10, 0x5

    move/from16 v0, v18

    if-le v13, v0, :cond_13

    .line 2048
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    add-int/lit8 v18, v10, 0x4

    aput v18, v8, v14

    .line 2051
    :goto_6
    add-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2052
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v10, 0x7

    aput v18, v8, v15

    goto/16 :goto_2

    .line 2057
    :cond_e
    add-int/lit8 v18, v10, 0x6

    move/from16 v0, v18

    if-le v13, v0, :cond_12

    .line 2058
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    add-int/lit8 v18, v10, 0x5

    aput v18, v8, v14

    .line 2061
    :goto_7
    add-int/lit8 v18, v10, 0x9

    move/from16 v0, v18

    if-le v13, v0, :cond_10

    .line 2062
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v10, 0x8

    aput v18, v8, v15

    goto/16 :goto_2

    .line 2066
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "c3":C
    .end local v7    # "c4":C
    .end local v10    # "index":I
    .end local v11    # "key3":I
    .end local v12    # "key4":I
    :cond_f
    add-int/lit8 v18, v16, 0x6

    move/from16 v0, v18

    if-lt v13, v0, :cond_3

    add-int/lit8 v18, v16, 0x8

    move/from16 v0, v18

    if-gt v13, v0, :cond_3

    .line 2067
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    add-int/lit8 v18, v16, 0x3

    aput v18, v8, v14

    :cond_10
    move v14, v15

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    goto/16 :goto_2

    .line 2074
    .restart local v9    # "i":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .end local v9    # "i":I
    .restart local v4    # "c1":C
    .restart local v5    # "c2":C
    .restart local v6    # "c3":C
    .restart local v7    # "c4":C
    .restart local v10    # "index":I
    .restart local v11    # "key3":I
    .restart local v12    # "key4":I
    :cond_12
    move v15, v14

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    goto :goto_7

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    :cond_13
    move v15, v14

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    goto :goto_6

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    :cond_14
    move v15, v14

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    goto :goto_5

    .end local v6    # "c3":C
    .end local v7    # "c4":C
    .end local v11    # "key3":I
    .end local v12    # "key4":I
    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    :cond_15
    move v15, v14

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    goto/16 :goto_4

    .end local v15    # "numDashes":I
    .restart local v14    # "numDashes":I
    :cond_16
    move v15, v14

    .end local v14    # "numDashes":I
    .restart local v15    # "numDashes":I
    goto/16 :goto_1
.end method

.method private static formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1026
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 1027
    .local v0, "dashPositions":[I
    const/4 v2, 0x0

    .line 1029
    .local v2, "numDashes":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    const/4 v4, 0x0

    .line 1031
    .local v4, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v7, v4, 0x6

    if-lt v6, v7, :cond_0

    .line 1032
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numDashes":I
    .local v3, "numDashes":I
    add-int/lit8 v6, v4, 0x4

    aput v6, v0, v2

    move v2, v3

    .line 1034
    .end local v3    # "numDashes":I
    .restart local v2    # "numDashes":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1035
    aget v5, v0, v1

    .line 1036
    .local v5, "pos":I
    add-int v6, v5, v1

    add-int v7, v5, v1

    const-string v8, "-"

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1029
    .end local v1    # "i":I
    .end local v4    # "phoneNumPosition":I
    .end local v5    # "pos":I
    :cond_1
    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    .line 1038
    .restart local v1    # "i":I
    .restart local v4    # "phoneNumPosition":I
    :cond_2
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 21
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1792
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 1796
    .local v12, "length":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 1797
    .local v9, "dashPositions":[I
    const/4 v13, 0x0

    .line 1798
    .local v13, "numDashes":I
    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v15, 0x0

    .line 1801
    .local v15, "phoneNumPosition":I
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1802
    .local v4, "c":C
    if-lez v15, :cond_0

    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v4, v0, :cond_1

    :cond_0
    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    add-int/lit8 v18, v15, 0x4

    move/from16 v0, v18

    if-le v12, v0, :cond_9

    .line 1804
    :cond_1
    move v11, v15

    .line 1805
    .local v11, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1806
    add-int/lit8 v11, v11, 0x1

    .line 1808
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 1809
    .local v5, "c1":C
    add-int/lit8 v18, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1810
    .local v6, "c2":C
    add-int/lit8 v18, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 1811
    .local v7, "c3":C
    add-int/lit8 v18, v11, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1813
    .local v8, "c4":C
    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->checkIndiaNumber(CCCC)I

    move-result v17

    .line 1815
    .local v17, "type":I
    if-nez v17, :cond_5

    .line 1816
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .local v14, "numDashes":I
    add-int/lit8 v18, v11, 0x2

    aput v18, v9, v13

    .line 1818
    add-int/lit8 v18, v11, 0x7

    move/from16 v0, v18

    if-le v12, v0, :cond_8

    .line 1819
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    add-int/lit8 v18, v11, 0x4

    aput v18, v9, v14

    .line 1839
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "c4":C
    .end local v11    # "index":I
    .end local v17    # "type":I
    :cond_3
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v13, :cond_a

    .line 1840
    aget v16, v9, v10

    .line 1841
    .local v16, "pos":I
    add-int v18, v16, v10

    add-int v19, v16, v10

    const-string v20, "-"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1798
    .end local v4    # "c":C
    .end local v10    # "i":I
    .end local v15    # "phoneNumPosition":I
    .end local v16    # "pos":I
    :cond_4
    add-int/lit8 v15, p1, 0x1

    goto/16 :goto_0

    .line 1821
    .restart local v4    # "c":C
    .restart local v5    # "c1":C
    .restart local v6    # "c2":C
    .restart local v7    # "c3":C
    .restart local v8    # "c4":C
    .restart local v11    # "index":I
    .restart local v15    # "phoneNumPosition":I
    .restart local v17    # "type":I
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1823
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v11, 0x2

    aput v18, v9, v13

    move v13, v14

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    goto :goto_1

    .line 1824
    :cond_6
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1826
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v11, 0x3

    aput v18, v9, v13

    move v13, v14

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    goto :goto_1

    .line 1829
    :cond_7
    add-int/lit8 v18, v11, 0x5

    move/from16 v0, v18

    if-le v12, v0, :cond_3

    .line 1830
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v11, 0x4

    aput v18, v9, v13

    :cond_8
    move v13, v14

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    goto :goto_1

    .line 1833
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "c4":C
    .end local v11    # "index":I
    .end local v17    # "type":I
    :cond_9
    add-int/lit8 v18, v15, 0x8

    move/from16 v0, v18

    if-le v12, v0, :cond_3

    .line 1835
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numDashes":I
    .restart local v14    # "numDashes":I
    add-int/lit8 v18, v15, 0x2

    aput v18, v9, v13

    .line 1836
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numDashes":I
    .restart local v13    # "numDashes":I
    add-int/lit8 v18, v15, 0x4

    aput v18, v9, v14

    goto :goto_1

    .line 1843
    .restart local v10    # "i":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method private static formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 14
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1480
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1484
    .local v6, "length":I
    const/4 v11, 0x2

    new-array v3, v11, [I

    .line 1485
    .local v3, "dashPositions":[I
    const/4 v7, 0x0

    .line 1486
    .local v7, "numDashes":I
    const/4 v11, -0x1

    if-ne p1, v11, :cond_4

    const/4 v9, 0x0

    .line 1488
    .local v9, "phoneNumPosition":I
    :goto_0
    if-gtz v9, :cond_0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_a

    .line 1489
    :cond_0
    move v5, v9

    .line 1490
    .local v5, "index":I
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_1

    .line 1491
    add-int/lit8 v5, v5, 0x1

    .line 1493
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1494
    .local v0, "c1":C
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1495
    .local v1, "c2":C
    add-int/lit8 v11, v5, 0x2

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1497
    .local v2, "c3":C
    const/16 v11, 0x38

    if-ne v0, v11, :cond_5

    .line 1499
    add-int/lit8 v11, v5, 0x5

    if-le v6, v11, :cond_12

    .line 1500
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 1503
    :goto_1
    add-int/lit8 v11, v5, 0x8

    if-lt v6, v11, :cond_2

    add-int/lit8 v11, v5, 0xa

    if-gt v6, v11, :cond_2

    .line 1504
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    move v8, v7

    .line 1507
    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_2
    add-int/lit8 v11, v5, 0xa

    if-le v6, v11, :cond_f

    .line 1508
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x7

    aput v11, v3, v8

    .line 1551
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "c3":C
    .end local v5    # "index":I
    :cond_3
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v7, :cond_e

    .line 1552
    aget v10, v3, v4

    .line 1553
    .local v10, "pos":I
    add-int v11, v10, v4

    add-int v12, v10, v4

    const-string v13, "-"

    invoke-virtual {p0, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1486
    .end local v4    # "i":I
    .end local v9    # "phoneNumPosition":I
    .end local v10    # "pos":I
    :cond_4
    add-int/lit8 v9, p1, 0x1

    goto :goto_0

    .line 1510
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "c3":C
    .restart local v5    # "index":I
    .restart local v9    # "phoneNumPosition":I
    :cond_5
    const/16 v11, 0x32

    if-ne v0, v11, :cond_6

    const/16 v11, 0x31

    if-eq v1, v11, :cond_8

    const/16 v11, 0x32

    if-eq v1, v11, :cond_8

    const/16 v11, 0x34

    if-eq v1, v11, :cond_8

    :cond_6
    const/16 v11, 0x33

    if-ne v0, v11, :cond_7

    const/16 v11, 0x31

    if-eq v1, v11, :cond_8

    :cond_7
    const/16 v11, 0x36

    if-ne v0, v11, :cond_9

    const/16 v11, 0x31

    if-ne v1, v11, :cond_9

    const/16 v11, 0x39

    if-eq v2, v11, :cond_9

    .line 1515
    :cond_8
    add-int/lit8 v11, v5, 0x3

    if-le v6, v11, :cond_11

    .line 1516
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x2

    aput v11, v3, v7

    .line 1519
    :goto_4
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_f

    .line 1520
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 1525
    :cond_9
    add-int/lit8 v11, v5, 0x4

    if-le v6, v11, :cond_10

    .line 1526
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 1529
    :goto_5
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_f

    .line 1530
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 1535
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "c3":C
    .end local v5    # "index":I
    :cond_a
    add-int/lit8 v11, v9, 0x7

    if-ne v6, v11, :cond_b

    .line 1536
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    move v7, v8

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto :goto_2

    .line 1537
    :cond_b
    add-int/lit8 v11, v9, 0x8

    if-ne v6, v11, :cond_c

    .line 1539
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v9, 0x4

    aput v11, v3, v7

    move v7, v8

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto :goto_2

    .line 1540
    :cond_c
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x38

    if-ne v11, v12, :cond_3

    .line 1541
    add-int/lit8 v11, v9, 0x8

    if-le v6, v11, :cond_d

    add-int/lit8 v11, v9, 0xa

    if-gt v6, v11, :cond_d

    .line 1542
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    .line 1543
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v9, 0x6

    aput v11, v3, v8

    goto/16 :goto_2

    .line 1544
    :cond_d
    add-int/lit8 v11, v9, 0xa

    if-le v6, v11, :cond_3

    .line 1545
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    .line 1546
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v9, 0x7

    aput v11, v3, v8

    goto/16 :goto_2

    .line 1555
    .restart local v4    # "i":I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .end local v4    # "i":I
    .end local v7    # "numDashes":I
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "c3":C
    .restart local v5    # "index":I
    .restart local v8    # "numDashes":I
    :cond_f
    move v7, v8

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto/16 :goto_2

    :cond_10
    move v8, v7

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    goto :goto_5

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    :cond_11
    move v8, v7

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    goto :goto_4

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    :cond_12
    move v8, v7

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    goto/16 :goto_1
.end method

.method private static formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 16
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 2114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 2118
    .local v8, "length":I
    const/4 v13, 0x2

    new-array v4, v13, [I

    .line 2119
    .local v4, "dashPositions":[I
    const/4 v9, 0x0

    .line 2120
    .local v9, "numDashes":I
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    const/4 v11, 0x0

    .line 2121
    .local v11, "phoneNumPosition":I
    :goto_0
    if-gtz v11, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-ne v13, v14, :cond_a

    .line 2122
    :cond_0
    move v6, v11

    .line 2123
    .local v6, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-ne v13, v14, :cond_1

    .line 2124
    add-int/lit8 v6, v6, 0x1

    .line 2126
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 2127
    .local v1, "c1":C
    add-int/lit8 v13, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 2128
    .local v2, "c2":C
    add-int/lit8 v13, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2129
    .local v3, "c3":C
    add-int/lit8 v13, v1, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/lit8 v14, v2, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    add-int/lit8 v14, v3, -0x30

    add-int v7, v13, v14

    .line 2131
    .local v7, "key":I
    sget-object v13, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v13, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v13

    if-ltz v13, :cond_4

    .line 2133
    add-int/lit8 v13, v6, 0x5

    if-le v8, v13, :cond_d

    .line 2134
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "numDashes":I
    .local v10, "numDashes":I
    add-int/lit8 v13, v6, 0x3

    aput v13, v4, v9

    .line 2137
    :goto_1
    add-int/lit8 v13, v6, 0x8

    if-le v8, v13, :cond_9

    .line 2138
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "numDashes":I
    .restart local v9    # "numDashes":I
    add-int/lit8 v13, v6, 0x6

    aput v13, v4, v10

    .line 2179
    .end local v6    # "index":I
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_b

    .line 2180
    aget v12, v4, v5

    .line 2181
    .local v12, "pos":I
    add-int v13, v12, v5

    add-int v14, v12, v5

    const-string v15, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2120
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v5    # "i":I
    .end local v7    # "key":I
    .end local v11    # "phoneNumPosition":I
    .end local v12    # "pos":I
    :cond_3
    add-int/lit8 v11, p1, 0x1

    goto :goto_0

    .line 2140
    .restart local v1    # "c1":C
    .restart local v2    # "c2":C
    .restart local v3    # "c3":C
    .restart local v6    # "index":I
    .restart local v7    # "key":I
    .restart local v11    # "phoneNumPosition":I
    :cond_4
    const/16 v13, 0x32

    if-eq v1, v13, :cond_5

    const/16 v13, 0x36

    if-ne v1, v13, :cond_6

    .line 2143
    :cond_5
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "numDashes":I
    .restart local v10    # "numDashes":I
    add-int/lit8 v13, v6, 0x1

    aput v13, v4, v9

    move v9, v10

    .end local v10    # "numDashes":I
    .restart local v9    # "numDashes":I
    goto :goto_2

    .line 2144
    :cond_6
    const/16 v13, 0x30

    if-eq v2, v13, :cond_7

    const/16 v13, 0x31

    if-eq v2, v13, :cond_7

    const/16 v13, 0x35

    if-eq v2, v13, :cond_7

    const/16 v13, 0x39

    if-ne v2, v13, :cond_8

    .line 2153
    :cond_7
    add-int/lit8 v13, v6, 0x4

    if-le v8, v13, :cond_2

    .line 2154
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "numDashes":I
    .restart local v10    # "numDashes":I
    add-int/lit8 v13, v6, 0x2

    aput v13, v4, v9

    move v9, v10

    .end local v10    # "numDashes":I
    .restart local v9    # "numDashes":I
    goto :goto_2

    .line 2158
    :cond_8
    add-int/lit8 v13, v6, 0x5

    if-le v8, v13, :cond_2

    .line 2159
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "numDashes":I
    .restart local v10    # "numDashes":I
    add-int/lit8 v13, v6, 0x3

    aput v13, v4, v9

    .end local v6    # "index":I
    :cond_9
    move v9, v10

    .end local v10    # "numDashes":I
    .restart local v9    # "numDashes":I
    goto :goto_2

    .line 2163
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v7    # "key":I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 2164
    .restart local v1    # "c1":C
    add-int/lit8 v13, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 2165
    .restart local v2    # "c2":C
    add-int/lit8 v13, v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2166
    .restart local v3    # "c3":C
    add-int/lit8 v13, v1, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/lit8 v14, v2, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    add-int/lit8 v14, v3, -0x30

    add-int v7, v13, v14

    .line 2167
    .restart local v7    # "key":I
    sget-object v13, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->ITALY_MOBILE_PREFIXS:[I

    invoke-static {v13, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v13

    if-ltz v13, :cond_2

    .line 2169
    add-int/lit8 v13, v11, 0x5

    if-le v8, v13, :cond_c

    .line 2170
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "numDashes":I
    .restart local v10    # "numDashes":I
    add-int/lit8 v13, v11, 0x3

    aput v13, v4, v9

    .line 2173
    :goto_4
    add-int/lit8 v13, v11, 0x7

    if-le v8, v13, :cond_9

    .line 2174
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "numDashes":I
    .restart local v9    # "numDashes":I
    add-int/lit8 v13, v11, 0x6

    aput v13, v4, v10

    goto/16 :goto_2

    .line 2183
    .restart local v5    # "i":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .end local v5    # "i":I
    :cond_c
    move v10, v9

    .end local v9    # "numDashes":I
    .restart local v10    # "numDashes":I
    goto :goto_4

    .end local v10    # "numDashes":I
    .restart local v6    # "index":I
    .restart local v9    # "numDashes":I
    :cond_d
    move v10, v9

    .end local v9    # "numDashes":I
    .restart local v10    # "numDashes":I
    goto/16 :goto_1
.end method

.method private static formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 998
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    .line 1000
    .local v0, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_1

    .line 1001
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    const-string v3, " "

    invoke-virtual {p0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    add-int/lit8 v1, p1, 0x3

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    .line 1004
    :goto_1
    return-object v1

    .line 998
    .end local v0    # "phoneNumPosition":I
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 1004
    .restart local v0    # "phoneNumPosition":I
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 13
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    const/16 v12, 0x32

    const/16 v11, 0x31

    const/16 v10, 0x30

    .line 1581
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1585
    .local v4, "length":I
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 1586
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1587
    .local v5, "numDashes":I
    const/4 v9, -0x1

    if-ne p1, v9, :cond_5

    const/4 v7, 0x0

    .line 1589
    .local v7, "phoneNumPosition":I
    :goto_0
    if-gtz v7, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_9

    .line 1590
    :cond_0
    move v3, v7

    .line 1591
    .local v3, "index":I
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_1

    .line 1592
    add-int/lit8 v3, v3, 0x1

    .line 1594
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1596
    .local v0, "c1":C
    const/16 v9, 0x33

    if-lt v0, v9, :cond_2

    const/16 v9, 0x37

    if-le v0, v9, :cond_3

    :cond_2
    const/16 v9, 0x39

    if-ne v0, v9, :cond_6

    .line 1598
    :cond_3
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_4

    .line 1599
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    add-int/lit8 v9, v3, 0x1

    aput v9, v1, v5

    move v5, v6

    .line 1637
    .end local v0    # "c1":C
    .end local v3    # "index":I
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_b

    .line 1638
    aget v8, v1, v2

    .line 1639
    .local v8, "pos":I
    add-int v9, v8, v2

    add-int v10, v8, v2

    const-string v11, "-"

    invoke-virtual {p0, v9, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1587
    .end local v2    # "i":I
    .end local v7    # "phoneNumPosition":I
    .end local v8    # "pos":I
    :cond_5
    add-int/lit8 v7, p1, 0x1

    goto :goto_0

    .line 1601
    .restart local v0    # "c1":C
    .restart local v3    # "index":I
    .restart local v7    # "phoneNumPosition":I
    :cond_6
    const/16 v9, 0x38

    if-ne v0, v9, :cond_7

    .line 1603
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_4

    .line 1604
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v9, v3, 0x2

    aput v9, v1, v5

    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1

    .line 1606
    :cond_7
    if-ne v0, v11, :cond_8

    .line 1609
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_e

    .line 1610
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v9, v3, 0x2

    aput v9, v1, v5

    .line 1613
    :goto_3
    add-int/lit8 v9, v3, 0x6

    if-le v4, v9, :cond_c

    .line 1614
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v9, v3, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1616
    :cond_8
    if-ne v0, v12, :cond_4

    .line 1618
    add-int/lit8 v9, v3, 0x4

    if-le v4, v9, :cond_d

    .line 1619
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v9, v3, 0x1

    aput v9, v1, v5

    .line 1622
    :goto_4
    add-int/lit8 v9, v3, 0x7

    if-le v4, v9, :cond_c

    .line 1623
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v9, v3, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1626
    .end local v0    # "c1":C
    .end local v3    # "index":I
    :cond_9
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_a

    add-int/lit8 v9, v7, 0x8

    if-le v4, v9, :cond_a

    .line 1628
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v9, v7, 0x1

    aput v9, v1, v5

    .line 1630
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v9, v7, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1631
    :cond_a
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_4

    add-int/lit8 v9, v7, 0x8

    if-le v4, v9, :cond_4

    .line 1633
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v9, v7, 0x2

    aput v9, v1, v5

    .line 1634
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v9, v7, 0x5

    aput v9, v1, v6

    goto :goto_1

    .line 1641
    .restart local v2    # "i":I
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v2    # "i":I
    .end local v5    # "numDashes":I
    .restart local v0    # "c1":C
    .restart local v3    # "index":I
    .restart local v6    # "numDashes":I
    :cond_c
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto/16 :goto_1

    :cond_d
    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_4

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_e
    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_3
.end method

.method private static formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    const/16 v9, 0x30

    .line 1328
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1332
    .local v3, "length":I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1333
    .local v0, "dashPositions":[I
    const/4 v4, 0x0

    .line 1334
    .local v4, "numDashes":I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1336
    .local v6, "phoneNumPosition":I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_5

    .line 1337
    :cond_0
    move v2, v6

    .line 1338
    .local v2, "index":I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1339
    add-int/lit8 v2, v2, 0x1

    .line 1342
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x32

    if-ne v8, v9, :cond_4

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x34

    if-eq v8, v9, :cond_4

    .line 1344
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_9

    .line 1345
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .local v5, "numDashes":I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v4

    .line 1348
    :goto_1
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_6

    .line 1349
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    .line 1370
    .end local v2    # "index":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_7

    .line 1371
    aget v7, v0, v1

    .line 1372
    .local v7, "pos":I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1334
    .end local v1    # "i":I
    .end local v6    # "phoneNumPosition":I
    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1353
    .restart local v2    # "index":I
    .restart local v6    # "phoneNumPosition":I
    :cond_4
    add-int/lit8 v8, v2, 0x3

    if-le v3, v8, :cond_8

    .line 1354
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v2, 0x1

    aput v8, v0, v4

    .line 1357
    :goto_4
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_6

    .line 1358
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x4

    aput v8, v0, v5

    goto :goto_2

    .line 1364
    .end local v2    # "index":I
    :cond_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(I)V

    .line 1365
    add-int/lit8 v8, v6, 0x7

    if-ne v3, v8, :cond_2

    .line 1366
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v6, 0x3

    aput v8, v0, v4

    :cond_6
    move v4, v5

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_2

    .line 1374
    .restart local v1    # "i":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1    # "i":I
    .restart local v2    # "index":I
    :cond_8
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_9
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 346
    .local v0, "sCachedLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v6, 0x31

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK Format Number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 418
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->checkInputNormalNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal Number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", do nothing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    move-object v1, p0

    .line 445
    :goto_0
    return-object v1

    .line 422
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 423
    if-nez p1, :cond_2

    move v0, v2

    .line 424
    .local v0, "formatType":I
    :goto_1
    move-object v1, p0

    .line 425
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1

    .line 426
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_3

    .line 427
    const/4 v0, 0x1

    .line 435
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 436
    packed-switch v0, :pswitch_data_0

    .line 442
    invoke-static {p0, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "formatType":I
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    move v0, p1

    .line 423
    goto :goto_1

    .line 428
    .restart local v0    # "formatType":I
    .restart local v1    # "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    .line 429
    const/4 v0, 0x2

    goto :goto_2

    .line 430
    :cond_4
    if-eq v0, v2, :cond_5

    if-ne v0, v5, :cond_1

    .line 431
    :cond_5
    invoke-static {p0, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 432
    goto :goto_0

    .line 439
    :pswitch_0
    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 440
    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 10
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v9, 0x2d

    const/16 v8, 0x20

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "result":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 364
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 365
    .local v4, "oldIndex":I
    move v2, v4

    .line 366
    .local v2, "digitCount":I
    const/4 v3, 0x0

    .line 368
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 369
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 370
    .local v0, "c":C
    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_1

    .line 371
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 368
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "c":C
    :cond_2
    const/4 v6, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "count":I
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    if-ge v1, v2, :cond_4

    .line 380
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 381
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_3

    if-eq v0, v9, :cond_3

    .line 382
    add-int/lit8 v1, v1, 0x1

    .line 379
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 385
    .end local v0    # "c":C
    :cond_4
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 389
    .end local v1    # "count":I
    .end local v2    # "digitCount":I
    .end local v3    # "i":I
    .end local v4    # "oldIndex":I
    :cond_5
    return-void
.end method

.method private static formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1214
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1218
    .local v2, "length":I
    const/4 v7, 0x3

    new-array v0, v7, [I

    .line 1219
    .local v0, "dashPositions":[I
    const/4 v3, 0x0

    .line 1220
    .local v3, "numDashes":I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_1

    const/4 v5, 0x0

    .line 1222
    .local v5, "phoneNumPosition":I
    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x35

    if-lt v7, v8, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x38

    if-gt v7, v8, :cond_2

    .line 1223
    add-int/lit8 v7, v5, 0x4

    if-le v2, v7, :cond_6

    .line 1224
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v7, v5, 0x2

    aput v7, v0, v3

    .line 1226
    :goto_1
    add-int/lit8 v7, v5, 0x6

    if-le v2, v7, :cond_0

    .line 1227
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x5

    aput v7, v0, v4

    move v4, v3

    .line 1229
    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_0
    add-int/lit8 v7, v5, 0x8

    if-le v2, v7, :cond_4

    .line 1230
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x7

    aput v7, v0, v4

    .line 1241
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 1242
    aget v6, v0, v1

    .line 1243
    .local v6, "pos":I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1220
    .end local v1    # "i":I
    .end local v5    # "phoneNumPosition":I
    .end local v6    # "pos":I
    :cond_1
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1233
    .restart local v5    # "phoneNumPosition":I
    :cond_2
    add-int/lit8 v7, v5, 0x5

    if-le v2, v7, :cond_5

    .line 1234
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1236
    :goto_4
    add-int/lit8 v7, v5, 0x8

    if-le v2, v7, :cond_4

    .line 1237
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    goto :goto_2

    .line 1245
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1    # "i":I
    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_4
    move v3, v4

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    goto :goto_2

    :cond_5
    move v4, v3

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_4

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    :cond_6
    move v4, v3

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_1
.end method

.method private static formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1134
    .local v2, "length":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1135
    .local v0, "dashPositions":[I
    const/4 v3, 0x0

    .line 1136
    .local v3, "numDashes":I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    const/4 v5, 0x0

    .line 1137
    .local v5, "phoneNumPosition":I
    :goto_0
    add-int/lit8 v7, v5, 0x4

    if-le v2, v7, :cond_3

    .line 1138
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v7, v5, 0x2

    aput v7, v0, v3

    .line 1140
    :goto_1
    add-int/lit8 v7, v5, 0x8

    if-le v2, v7, :cond_2

    .line 1141
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x5

    aput v7, v0, v4

    .line 1143
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_1

    .line 1144
    aget v6, v0, v1

    .line 1145
    .local v6, "pos":I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1136
    .end local v1    # "i":I
    .end local v5    # "phoneNumPosition":I
    .end local v6    # "pos":I
    :cond_0
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1147
    .restart local v1    # "i":I
    .restart local v5    # "phoneNumPosition":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1    # "i":I
    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_2
    move v3, v4

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    goto :goto_2

    :cond_3
    move v4, v3

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_1
.end method

.method private static formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1865
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1869
    .local v2, "length":I
    const/4 v7, 0x3

    new-array v0, v7, [I

    .line 1870
    .local v0, "dashPositions":[I
    const/4 v3, 0x0

    .line 1871
    .local v3, "numDashes":I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_2

    const/4 v5, 0x0

    .line 1873
    .local v5, "phoneNumPosition":I
    :goto_0
    if-lez v5, :cond_3

    .line 1875
    add-int/lit8 v7, v5, 0x5

    if-le v2, v7, :cond_8

    .line 1876
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1879
    :goto_1
    add-int/lit8 v7, v5, 0x7

    if-le v2, v7, :cond_0

    .line 1880
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    move v4, v3

    .line 1883
    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_0
    add-int/lit8 v7, v5, 0x9

    if-le v2, v7, :cond_6

    .line 1884
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x8

    aput v7, v0, v4

    .line 1904
    :cond_1
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_7

    .line 1905
    aget v6, v0, v1

    .line 1906
    .local v6, "pos":I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1871
    .end local v1    # "i":I
    .end local v5    # "phoneNumPosition":I
    .end local v6    # "pos":I
    :cond_2
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1886
    .restart local v5    # "phoneNumPosition":I
    :cond_3
    add-int/lit8 v7, v5, 0x6

    if-ne v2, v7, :cond_4

    .line 1888
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v7, v5, 0x2

    aput v7, v0, v3

    .line 1889
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x4

    aput v7, v0, v4

    goto :goto_2

    .line 1890
    :cond_4
    add-int/lit8 v7, v5, 0x7

    if-ne v2, v7, :cond_5

    .line 1892
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1893
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x5

    aput v7, v0, v4

    goto :goto_2

    .line 1894
    :cond_5
    add-int/lit8 v7, v5, 0x8

    if-lt v2, v7, :cond_1

    .line 1896
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1897
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    .line 1899
    add-int/lit8 v7, v5, 0x9

    if-le v2, v7, :cond_1

    .line 1900
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v7, v5, 0x8

    aput v7, v0, v3

    :cond_6
    move v3, v4

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    goto :goto_2

    .line 1908
    .restart local v1    # "i":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1    # "i":I
    :cond_8
    move v4, v3

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_1
.end method

.method private static formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1658
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1662
    .local v2, "length":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1663
    .local v0, "dashPositions":[I
    const/4 v3, 0x0

    .line 1664
    .local v3, "numDashes":I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    const/4 v5, 0x0

    .line 1666
    .local v5, "phoneNumPosition":I
    :goto_0
    add-int/lit8 v7, v5, 0x5

    if-le v2, v7, :cond_3

    .line 1667
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "numDashes":I
    .local v4, "numDashes":I
    add-int/lit8 v7, v5, 0x3

    aput v7, v0, v3

    .line 1670
    :goto_1
    add-int/lit8 v7, v5, 0x7

    if-le v2, v7, :cond_2

    .line 1671
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    add-int/lit8 v7, v5, 0x6

    aput v7, v0, v4

    .line 1674
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_1

    .line 1675
    aget v6, v0, v1

    .line 1676
    .local v6, "pos":I
    add-int v7, v6, v1

    add-int v8, v6, v1

    const-string v9, "-"

    invoke-virtual {p0, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1664
    .end local v1    # "i":I
    .end local v5    # "phoneNumPosition":I
    .end local v6    # "pos":I
    :cond_0
    add-int/lit8 v5, p1, 0x1

    goto :goto_0

    .line 1678
    .restart local v1    # "i":I
    .restart local v5    # "phoneNumPosition":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1    # "i":I
    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_2
    move v3, v4

    .end local v4    # "numDashes":I
    .restart local v3    # "numDashes":I
    goto :goto_2

    :cond_3
    move v4, v3

    .end local v3    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_1
.end method

.method private static formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 14
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 913
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 917
    .local v6, "length":I
    const/4 v11, 0x2

    new-array v3, v11, [I

    .line 918
    .local v3, "dashPositions":[I
    const/4 v7, 0x0

    .line 919
    .local v7, "numDashes":I
    const/4 v11, -0x1

    if-ne p1, v11, :cond_3

    const/4 v9, 0x0

    .line 921
    .local v9, "phoneNumPosition":I
    :goto_0
    if-gtz v9, :cond_0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_f

    .line 922
    :cond_0
    move v5, v9

    .line 923
    .local v5, "index":I
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_1

    .line 924
    add-int/lit8 v5, v5, 0x1

    .line 926
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 927
    .local v0, "c1":C
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 928
    .local v1, "c2":C
    add-int/lit8 v11, v5, 0x2

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 930
    .local v2, "c3":C
    const/16 v11, 0x39

    if-ne v0, v11, :cond_4

    .line 936
    add-int/lit8 v11, v5, 0x4

    if-le v6, v11, :cond_14

    .line 937
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .local v8, "numDashes":I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 939
    :goto_1
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_11

    .line 940
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    .line 977
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "c3":C
    .end local v5    # "index":I
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v7, :cond_12

    .line 978
    aget v10, v3, v4

    .line 979
    .local v10, "pos":I
    add-int v11, v10, v4

    add-int v12, v10, v4

    const-string v13, "-"

    invoke-virtual {p0, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 919
    .end local v4    # "i":I
    .end local v9    # "phoneNumPosition":I
    .end local v10    # "pos":I
    :cond_3
    add-int/lit8 v9, p1, 0x1

    goto :goto_0

    .line 942
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "c3":C
    .restart local v5    # "index":I
    .restart local v9    # "phoneNumPosition":I
    :cond_4
    const/16 v11, 0x38

    if-ne v0, v11, :cond_5

    const/16 v11, 0x32

    if-ne v1, v11, :cond_5

    const/16 v11, 0x36

    if-eq v2, v11, :cond_6

    :cond_5
    const/16 v11, 0x38

    if-ne v0, v11, :cond_7

    const/16 v11, 0x33

    if-ne v1, v11, :cond_7

    const/16 v11, 0x36

    if-ne v2, v11, :cond_7

    .line 944
    :cond_6
    add-int/lit8 v11, v5, 0x4

    if-le v6, v11, :cond_13

    .line 945
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x3

    aput v11, v3, v7

    .line 948
    :goto_4
    add-int/lit8 v11, v5, 0x7

    if-le v6, v11, :cond_11

    .line 949
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 951
    :cond_7
    const/16 v11, 0x33

    if-ne v0, v11, :cond_8

    const/16 v11, 0x37

    if-eq v1, v11, :cond_b

    :cond_8
    const/16 v11, 0x34

    if-ne v0, v11, :cond_9

    const/16 v11, 0x39

    if-eq v1, v11, :cond_b

    :cond_9
    const/16 v11, 0x38

    if-ne v0, v11, :cond_a

    const/16 v11, 0x39

    if-eq v1, v11, :cond_b

    :cond_a
    const/16 v11, 0x38

    if-ne v0, v11, :cond_d

    const/16 v11, 0x32

    if-ne v1, v11, :cond_d

    .line 953
    :cond_b
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x2

    aput v11, v3, v7

    .line 955
    add-int/lit8 v11, v5, 0x6

    if-le v6, v11, :cond_c

    add-int/lit8 v11, v5, 0xa

    if-ge v6, v11, :cond_c

    .line 956
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x5

    aput v11, v3, v8

    goto :goto_2

    .line 957
    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_c
    add-int/lit8 v11, v5, 0xa

    if-lt v6, v11, :cond_11

    .line 958
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x6

    aput v11, v3, v8

    goto :goto_2

    .line 962
    :cond_d
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v5, 0x1

    aput v11, v3, v7

    .line 964
    add-int/lit8 v11, v5, 0x6

    if-le v6, v11, :cond_e

    add-int/lit8 v11, v5, 0x9

    if-ge v6, v11, :cond_e

    .line 965
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x4

    aput v11, v3, v8

    goto/16 :goto_2

    .line 966
    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    :cond_e
    add-int/lit8 v11, v5, 0x9

    if-lt v6, v11, :cond_11

    .line 967
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v11, v5, 0x5

    aput v11, v3, v8

    goto/16 :goto_2

    .line 971
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "c3":C
    .end local v5    # "index":I
    :cond_f
    add-int/lit8 v11, v9, 0x4

    if-le v6, v11, :cond_10

    add-int/lit8 v11, v9, 0x8

    if-ge v6, v11, :cond_10

    .line 972
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v9, 0x3

    aput v11, v3, v7

    move v7, v8

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto/16 :goto_2

    .line 973
    :cond_10
    add-int/lit8 v11, v9, 0x8

    if-lt v6, v11, :cond_2

    .line 974
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    add-int/lit8 v11, v9, 0x4

    aput v11, v3, v7

    :cond_11
    move v7, v8

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto/16 :goto_2

    .line 981
    .restart local v4    # "i":I
    :cond_12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .end local v4    # "i":I
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "c3":C
    .restart local v5    # "index":I
    :cond_13
    move v8, v7

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    goto/16 :goto_4

    .end local v8    # "numDashes":I
    .restart local v7    # "numDashes":I
    :cond_14
    move v8, v7

    .end local v7    # "numDashes":I
    .restart local v8    # "numDashes":I
    goto/16 :goto_1
.end method

.method private static formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    const/16 v9, 0x30

    .line 1394
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1398
    .local v3, "length":I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 1399
    .local v0, "dashPositions":[I
    const/4 v4, 0x0

    .line 1400
    .local v4, "numDashes":I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 1402
    .local v6, "phoneNumPosition":I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 1403
    :cond_0
    move v2, v6

    .line 1404
    .local v2, "index":I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1405
    add-int/lit8 v2, v2, 0x1

    .line 1408
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x38

    if-ne v8, v9, :cond_4

    .line 1410
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_a

    .line 1411
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .local v5, "numDashes":I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v4

    .line 1414
    :goto_1
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_7

    .line 1415
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    .line 1447
    .end local v2    # "index":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_6

    .line 1448
    aget v7, v0, v1

    .line 1449
    .local v7, "pos":I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1400
    .end local v1    # "i":I
    .end local v6    # "phoneNumPosition":I
    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 1417
    .restart local v2    # "index":I
    .restart local v6    # "phoneNumPosition":I
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x32

    if-ne v8, v9, :cond_5

    .line 1419
    add-int/lit8 v8, v2, 0x3

    if-le v3, v8, :cond_9

    .line 1420
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v2, 0x1

    aput v8, v0, v4

    .line 1423
    :goto_4
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_7

    .line 1424
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x4

    aput v8, v0, v5

    goto :goto_2

    .line 1428
    :cond_5
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_8

    .line 1429
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v2, 0x2

    aput v8, v0, v4

    .line 1432
    :goto_5
    add-int/lit8 v8, v2, 0x6

    if-le v3, v8, :cond_7

    .line 1433
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x5

    aput v8, v0, v5

    goto :goto_2

    .line 1451
    .end local v2    # "index":I
    .restart local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1    # "i":I
    .end local v4    # "numDashes":I
    .restart local v2    # "index":I
    .restart local v5    # "numDashes":I
    :cond_7
    move v4, v5

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_2

    :cond_8
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_5

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_9
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    :cond_a
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1
.end method

.method private static formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    const/16 v9, 0x30

    .line 2389
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2393
    .local v3, "length":I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 2394
    .local v0, "dashPositions":[I
    const/4 v4, 0x0

    .line 2395
    .local v4, "numDashes":I
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    const/4 v6, 0x0

    .line 2396
    .local v6, "phoneNumPosition":I
    :goto_0
    if-gtz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 2397
    :cond_0
    move v2, v6

    .line 2398
    .local v2, "index":I
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 2399
    add-int/lit8 v2, v2, 0x1

    .line 2402
    :cond_1
    add-int/lit8 v8, v2, 0x4

    if-le v3, v8, :cond_7

    .line 2403
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .local v5, "numDashes":I
    add-int/lit8 v8, v2, 0x3

    aput v8, v0, v4

    .line 2406
    :goto_1
    add-int/lit8 v8, v2, 0x7

    if-le v3, v8, :cond_5

    .line 2407
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    add-int/lit8 v8, v2, 0x6

    aput v8, v0, v5

    .line 2416
    .end local v2    # "index":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_6

    .line 2417
    aget v7, v0, v1

    .line 2418
    .local v7, "pos":I
    add-int v8, v7, v1

    add-int v9, v7, v1

    const-string v10, "-"

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2395
    .end local v1    # "i":I
    .end local v6    # "phoneNumPosition":I
    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 2411
    .restart local v6    # "phoneNumPosition":I
    :cond_4
    add-int/lit8 v8, v6, 0x4

    if-le v3, v8, :cond_2

    .line 2412
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    add-int/lit8 v8, v6, 0x3

    aput v8, v0, v4

    :cond_5
    move v4, v5

    .end local v5    # "numDashes":I
    .restart local v4    # "numDashes":I
    goto :goto_2

    .line 2420
    .restart local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v1    # "i":I
    .restart local v2    # "index":I
    :cond_7
    move v5, v4

    .end local v4    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1
.end method

.method private static formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 13
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "blankPosition"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1066
    .local v5, "length":I
    const/4 v10, 0x2

    new-array v2, v10, [I

    .line 1067
    .local v2, "dashPositions":[I
    const/4 v6, 0x0

    .line 1068
    .local v6, "numDashes":I
    const/4 v10, -0x1

    if-ne p1, v10, :cond_4

    const/4 v8, 0x0

    .line 1070
    .local v8, "phoneNumPosition":I
    :goto_0
    if-gtz v8, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_3

    .line 1071
    :cond_0
    move v4, v8

    .line 1072
    .local v4, "index":I
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_1

    .line 1073
    add-int/lit8 v4, v4, 0x1

    .line 1075
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1076
    .local v0, "c1":C
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1078
    .local v1, "c2":C
    const/16 v10, 0x34

    if-eq v0, v10, :cond_2

    const/16 v10, 0x38

    if-ne v0, v10, :cond_5

    .line 1079
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .local v7, "numDashes":I
    add-int/lit8 v10, v4, 0x1

    aput v10, v2, v6

    move v6, v7

    .line 1109
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v4    # "index":I
    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_e

    .line 1110
    aget v9, v2, v3

    .line 1111
    .local v9, "pos":I
    add-int v10, v9, v3

    add-int v11, v9, v3

    const-string v12, "-"

    invoke-virtual {p0, v10, v11, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1068
    .end local v3    # "i":I
    .end local v8    # "phoneNumPosition":I
    .end local v9    # "pos":I
    :cond_4
    add-int/lit8 v8, p1, 0x1

    goto :goto_0

    .line 1080
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v4    # "index":I
    .restart local v8    # "phoneNumPosition":I
    :cond_5
    const/16 v10, 0x32

    if-ne v0, v10, :cond_6

    const/16 v10, 0x31

    if-eq v1, v10, :cond_9

    const/16 v10, 0x33

    if-eq v1, v10, :cond_9

    const/16 v10, 0x34

    if-eq v1, v10, :cond_9

    const/16 v10, 0x38

    if-eq v1, v10, :cond_9

    :cond_6
    const/16 v10, 0x33

    if-ne v0, v10, :cond_7

    const/16 v10, 0x32

    if-eq v1, v10, :cond_9

    const/16 v10, 0x35

    if-eq v1, v10, :cond_9

    :cond_7
    const/16 v10, 0x36

    if-ne v0, v10, :cond_8

    const/16 v10, 0x35

    if-eq v1, v10, :cond_9

    :cond_8
    const/16 v10, 0x37

    if-ne v0, v10, :cond_a

    const/16 v10, 0x31

    if-eq v1, v10, :cond_9

    const/16 v10, 0x38

    if-ne v1, v10, :cond_a

    .line 1085
    :cond_9
    add-int/lit8 v10, v4, 0x4

    if-le v5, v10, :cond_3

    .line 1086
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    move v6, v7

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 1088
    :cond_a
    const/16 v10, 0x39

    if-ne v0, v10, :cond_b

    .line 1090
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v4, 0x2

    aput v10, v2, v6

    .line 1092
    add-int/lit8 v10, v4, 0x6

    if-le v5, v10, :cond_d

    .line 1093
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v4, 0x5

    aput v10, v2, v7

    goto :goto_1

    .line 1095
    :cond_b
    const/16 v10, 0x31

    if-ne v0, v10, :cond_c

    .line 1097
    add-int/lit8 v10, v4, 0x4

    if-le v5, v10, :cond_f

    .line 1098
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v4, 0x3

    aput v10, v2, v6

    .line 1101
    :goto_3
    add-int/lit8 v10, v4, 0x7

    if-le v5, v10, :cond_d

    .line 1102
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    add-int/lit8 v10, v4, 0x6

    aput v10, v2, v7

    goto/16 :goto_1

    .line 1106
    :cond_c
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    add-int/lit8 v10, v4, 0x2

    aput v10, v2, v6

    :cond_d
    move v6, v7

    .end local v7    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto/16 :goto_1

    .line 1113
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v4    # "index":I
    .restart local v3    # "i":I
    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .end local v3    # "i":I
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v4    # "index":I
    :cond_f
    move v7, v6

    .end local v6    # "numDashes":I
    .restart local v7    # "numDashes":I
    goto :goto_3
.end method

.method static getDefaultSimCountryIso()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "iso":Ljava/lang/String;
    const-string v2, "1"

    const-string v3, "ro.mtk_gemini_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    const/4 v1, -0x1

    .line 272
    .local v1, "simId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 273
    const/4 v1, 0x0

    .line 275
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    const/4 v1, 0x0

    .line 287
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .end local v1    # "simId":I
    :goto_1
    return-object v0

    .line 279
    .restart local v1    # "simId":I
    :cond_2
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const/4 v1, 0x1

    goto :goto_0

    .line 281
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-lt v2, v4, :cond_4

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    const/4 v1, 0x2

    goto :goto_0

    .line 283
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    const/4 v1, 0x3

    goto :goto_0

    .line 289
    .end local v1    # "simId":I
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "prefixs"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 635
    const/4 v7, 0x0

    .line 636
    .local v7, "result":I
    const/4 v2, 0x0

    .line 637
    .local v2, "index":I
    const/4 v8, 0x0

    .line 638
    .local v8, "startIndex":I
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 640
    .local v4, "match":[I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_3

    .line 641
    const/4 v8, 0x1

    .line 652
    :cond_0
    :goto_0
    if-lez v8, :cond_1

    .line 653
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 654
    .local v5, "pattern":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 655
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 656
    move v7, v2

    .line 657
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    .line 662
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_2

    .line 663
    const/4 v8, 0x0

    .line 665
    :cond_2
    aput v8, v4, v11

    .line 666
    const/4 v9, 0x1

    aput v7, v4, v9

    .line 667
    return-object v4

    .line 644
    :cond_3
    move-object v0, p1

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 645
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 646
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 647
    goto :goto_0

    .line 644
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 653
    .end local v6    # "prefix":Ljava/lang/String;
    .restart local v5    # "pattern":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getFormatTypeByCommonPrefix(Ljava/lang/String;)[I
    .locals 13
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 598
    const/4 v6, 0x0

    .line 599
    .local v6, "result":I
    const/4 v2, 0x0

    .line 600
    .local v2, "index":I
    const/4 v7, 0x0

    .line 601
    .local v7, "startIndex":I
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 603
    .local v4, "match":[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2b

    if-ne v8, v9, :cond_3

    .line 604
    const/4 v7, 0x1

    .line 608
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 609
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_CODES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 610
    .local v5, "pattern":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 611
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 612
    move v6, v2

    .line 613
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 618
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 619
    const/4 v7, 0x0

    .line 621
    :cond_2
    aput v7, v4, v10

    .line 622
    aput v6, v4, v11

    .line 623
    return-object v4

    .line 605
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_0

    .line 606
    const/4 v7, 0x2

    goto :goto_0

    .line 609
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "pattern":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 255
    invoke-static {}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getDefaultSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "simIso":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFormatTypeForLocale Get sim sio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 257
    invoke-static {v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 8
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v5, 0x0

    .line 316
    .local v5, "type":I
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 317
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I

    move-result v5

    .line 319
    if-nez v5, :cond_1

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "index":I
    sget-object v0, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FORMAT_COUNTRY_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 322
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 323
    invoke-virtual {v4, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 324
    move v5, v2

    .line 329
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_1

    const-string v6, "UK"

    invoke-virtual {v6, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 330
    const/4 v5, 0x7

    .line 334
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get Format Type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 335
    return v5

    .line 321
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "index":I
    .restart local v3    # "len$":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getFormatTypeFromCountryCodeInternal(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v2, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 298
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 299
    sget-object v2, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 300
    const/4 v2, 0x1

    .line 306
    :goto_1
    return v2

    .line 298
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 304
    const/4 v2, 0x2

    goto :goto_1

    .line 306
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getFormatTypeFromNumber(Ljava/lang/String;I)[I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormatType"    # I

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "match":[I
    packed-switch p1, :pswitch_data_0

    .line 731
    :goto_0
    return-object v0

    .line 698
    :pswitch_0
    invoke-static {p0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeByCommonPrefix(Ljava/lang/String;)[I

    move-result-object v0

    .line 699
    goto :goto_0

    .line 701
    :pswitch_1
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->TAIWAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 702
    goto :goto_0

    .line 704
    :pswitch_2
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->HONGKONG_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 705
    goto :goto_0

    .line 707
    :pswitch_3
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->NANP_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 708
    goto :goto_0

    .line 710
    :pswitch_4
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->JAPAN_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 711
    goto :goto_0

    .line 713
    :pswitch_5
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->FRANCE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 714
    goto :goto_0

    .line 716
    :pswitch_6
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->SINGAPORE_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 717
    goto :goto_0

    .line 719
    :pswitch_7
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->INDONESIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 720
    goto :goto_0

    .line 722
    :pswitch_8
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->THAILAND_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 723
    goto :goto_0

    .line 725
    :pswitch_9
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->AUSTRALIA_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    .line 726
    goto :goto_0

    .line 728
    :pswitch_a
    sget-object v1, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->BRAZIL_INTERNATIONAL_PREFIXS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatNumberBySpecialPrefix(Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    .line 682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 2430
    return-void
.end method

.method static mtkFormatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "defaultFormatType"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 456
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MTK Format Number:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->log(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 458
    .local v2, "length":I
    const/4 v9, 0x6

    if-ge v2, v9, :cond_1

    .line 587
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 465
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    const-string v9, "*"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "#"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "@"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 466
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 469
    :cond_3
    move v1, p1

    .line 471
    .local v1, "formatType":I
    invoke-static {p0, p1}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeFromNumber(Ljava/lang/String;I)[I

    move-result-object v3

    .line 472
    .local v3, "match":[I
    const/4 v8, 0x0

    .line 473
    .local v8, "startIndex":I
    if-eqz v3, :cond_4

    aget v9, v3, v12

    if-eqz v9, :cond_4

    .line 474
    aget v1, v3, v12

    .line 475
    aget v8, v3, v11

    .line 479
    :cond_4
    add-int/lit8 v9, v8, 0x4

    if-lt v2, v9, :cond_0

    .line 481
    add-int/lit8 v9, v8, 0xf

    if-gt v2, v9, :cond_0

    .line 484
    move-object v4, p0

    .line 485
    .local v4, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    .line 488
    .local v0, "blankPosition":I
    invoke-static {v5, v8}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I

    move-result v0

    .line 490
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v10, v8, 0x4

    if-lt v9, v10, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v10, v8, 0x4

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_6

    .line 491
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 494
    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 585
    invoke-static {v5}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object p0, v4

    .line 587
    goto :goto_0

    .line 496
    :pswitch_0
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatChinaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 497
    goto :goto_1

    .line 500
    :pswitch_1
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatHeightLengthWithoutRegionCodeNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 501
    goto :goto_1

    .line 503
    :pswitch_2
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatMacauNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 504
    goto :goto_1

    .line 506
    :pswitch_3
    const/4 v6, 0x0

    .line 507
    .local v6, "ssb":Landroid/text/SpannableStringBuilder;
    if-ltz v0, :cond_7

    .line 508
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 509
    .restart local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 510
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v11, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 512
    :cond_7
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 513
    .restart local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 514
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    goto :goto_1

    .line 518
    .end local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    :pswitch_4
    const/4 v7, 0x0

    .line 519
    .local v7, "ssb2":Landroid/text/SpannableStringBuilder;
    if-ltz v0, :cond_8

    .line 520
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7    # "ssb2":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 521
    .restart local v7    # "ssb2":Landroid/text/SpannableStringBuilder;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 522
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v11, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 524
    :cond_8
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7    # "ssb2":Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 525
    .restart local v7    # "ssb2":Landroid/text/SpannableStringBuilder;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 526
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 528
    goto :goto_1

    .line 530
    .end local v7    # "ssb2":Landroid/text/SpannableStringBuilder;
    :pswitch_5
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatTaiwanNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 531
    goto :goto_1

    .line 533
    :pswitch_6
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatVietnamNubmer(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 534
    goto :goto_1

    .line 536
    :pswitch_7
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatPortugalNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 537
    goto :goto_1

    .line 539
    :pswitch_8
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatPolandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 540
    goto :goto_1

    .line 542
    :pswitch_9
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatAustraliaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 543
    goto/16 :goto_1

    .line 545
    :pswitch_a
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatNewZealandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 546
    goto/16 :goto_1

    .line 548
    :pswitch_b
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatThailandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 549
    goto/16 :goto_1

    .line 551
    :pswitch_c
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatIndonesiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 552
    goto/16 :goto_1

    .line 554
    :pswitch_d
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatMalaysiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 555
    goto/16 :goto_1

    .line 557
    :pswitch_e
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatSpainNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 558
    goto/16 :goto_1

    .line 560
    :pswitch_f
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatRussianNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 561
    goto/16 :goto_1

    .line 563
    :pswitch_10
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatGermanyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 564
    goto/16 :goto_1

    .line 566
    :pswitch_11
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatIndiaNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 567
    goto/16 :goto_1

    .line 569
    :pswitch_12
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatItalyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 570
    goto/16 :goto_1

    .line 572
    :pswitch_13
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatFranceNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 573
    goto/16 :goto_1

    .line 575
    :pswitch_14
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatEnglandNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 576
    goto/16 :goto_1

    .line 578
    :pswitch_15
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatBrazilNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 579
    goto/16 :goto_1

    .line 581
    :pswitch_16
    invoke-static {v5, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatTurkeyNumber(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 582
    goto/16 :goto_1

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_1
        :pswitch_c
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private static removeAllDash(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "p":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 742
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 743
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 745
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeAllDashAndFormatBlank(Ljava/lang/StringBuilder;I)I
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "startIndex"    # I

    .prologue
    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, "p":I
    const/4 v0, -0x1

    .line 760
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 761
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 762
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 764
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :cond_2
    if-lez p1, :cond_3

    .line 769
    move v0, p1

    .line 770
    const-string v2, " "

    invoke-virtual {p0, v0, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_3
    return v0
.end method

.method private static removeTrailingDashes(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 782
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 783
    .local v0, "len":I
    :goto_0
    if-lez v0, :cond_0

    .line 784
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 785
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 786
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 791
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
