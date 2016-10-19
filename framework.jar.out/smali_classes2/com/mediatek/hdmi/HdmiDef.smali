.class public Lcom/mediatek/hdmi/HdmiDef;
.super Ljava/lang/Object;
.source "HdmiDef.java"


# static fields
.field public static final AUDIO_OUTPUT_MULTICHANNEL:I = 0x6

.field public static final AUDIO_OUTPUT_STEREO:I = 0x2

.field public static final AUTO:I = 0x64

.field public static final CAPABILITY_MUTEX_CALL:I = 0x4

.field public static final CAPABILITY_RDMA_LIMIT:I = 0x2

.field public static final CAPABILITY_SCALE_ADJUST:I = 0x1

.field public static final DISPLAY_TYPE_HDMI:I = 0x0

.field public static final DISPLAY_TYPE_MHL:I = 0x2

.field public static final DISPLAY_TYPE_SMB:I = 0x1

.field public static final HDMI_MAX_BITWIDTH:I = 0xc00

.field public static final HDMI_MAX_BITWIDTH_OFFSETS:I = 0xa

.field public static final HDMI_MAX_CHANNEL:I = 0x78

.field public static final HDMI_MAX_CHANNEL_OFFSETS:I = 0x3

.field public static final HDMI_MAX_SAMPLERATE:I = 0x380

.field public static final HDMI_MAX_SAMPLERATE_OFFSETS:I = 0x7

.field public static final RESOLUTION_1280X720P3D_50HZ:I = 0xe

.field public static final RESOLUTION_1280X720P3D_60HZ:I = 0xd

.field public static final RESOLUTION_1280X720P_50HZ:I = 0x3

.field public static final RESOLUTION_1280X720P_60HZ:I = 0x2

.field public static final RESOLUTION_1920X1080I3D_50HZ:I = 0x10

.field public static final RESOLUTION_1920X1080I3D_60HZ:I = 0xf

.field public static final RESOLUTION_1920X1080I_50HZ:I = 0x5

.field public static final RESOLUTION_1920X1080I_60HZ:I = 0x4

.field public static final RESOLUTION_1920X1080P3D_23HZ:I = 0x12

.field public static final RESOLUTION_1920X1080P3D_24HZ:I = 0x11

.field public static final RESOLUTION_1920X1080P_23HZ:I = 0x9

.field public static final RESOLUTION_1920X1080P_24HZ:I = 0x8

.field public static final RESOLUTION_1920X1080P_25HZ:I = 0x7

.field public static final RESOLUTION_1920X1080P_29HZ:I = 0xa

.field public static final RESOLUTION_1920X1080P_30HZ:I = 0x6

.field public static final RESOLUTION_1920X1080P_50HZ:I = 0xc

.field public static final RESOLUTION_1920X1080P_60HZ:I = 0xb

.field public static final RESOLUTION_720X480P_60HZ:I = 0x0

.field public static final RESOLUTION_720X576P_50HZ:I = 0x1

.field public static final SINK_1080I50:I = 0x1000

.field public static final SINK_1080I60:I = 0x4

.field public static final SINK_1080P23976:I = 0x200000

.field public static final SINK_1080P24:I = 0x100000

.field public static final SINK_1080P25:I = 0x80000

.field public static final SINK_1080P2997:I = 0x400000

.field public static final SINK_1080P30:I = 0x200

.field public static final SINK_1080P50:I = 0x2000

.field public static final SINK_1080P60:I = 0x8

.field public static final SINK_480I:I = 0x40

.field public static final SINK_480I_1440:I = 0x80

.field public static final SINK_480I_2880:I = 0x100

.field public static final SINK_480P:I = 0x1

.field public static final SINK_480P_1440:I = 0x10

.field public static final SINK_480P_2880:I = 0x20

.field public static final SINK_576I:I = 0x10000

.field public static final SINK_576I_1440:I = 0x20000

.field public static final SINK_576I_2880:I = 0x40000

.field public static final SINK_576P:I = 0x400

.field public static final SINK_576P_1440:I = 0x4000

.field public static final SINK_576P_2880:I = 0x8000

.field public static final SINK_720P50:I = 0x800

.field public static final SINK_720P60:I = 0x2

.field public static sResolutionMask:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/hdmi/HdmiDef;->sResolutionMask:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x400
        0x2
        0x800
        0x4
        0x1000
        0x200
        0x80000
        0x100000
        0x200000
        0x400000
        0x8
        0x2000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllResolutions()[I
    .locals 2

    .prologue
    .line 107
    const/16 v1, 0xc

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 114
    .local v0, "resolutions":[I
    return-object v0

    .line 107
    :array_0
    .array-data 4
        0xb
        0xc
        0x6
        0x7
        0x8
        0x9
        0x4
        0x5
        0x2
        0x3
        0x0
        0x1
    .end array-data
.end method

.method public static getDefaultResolutions(I)[I
    .locals 3
    .param p0, "index"    # I

    .prologue
    const/4 v2, 0x4

    .line 119
    if-nez p0, :cond_0

    .line 120
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 133
    .local v0, "resolutions":[I
    :goto_0
    return-object v0

    .line 123
    .end local v0    # "resolutions":[I
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p0, :cond_1

    .line 124
    invoke-static {}, Lcom/mediatek/hdmi/HdmiDef;->getAllResolutions()[I

    move-result-object v0

    .restart local v0    # "resolutions":[I
    goto :goto_0

    .line 125
    .end local v0    # "resolutions":[I
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p0, :cond_2

    .line 126
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .restart local v0    # "resolutions":[I
    goto :goto_0

    .line 129
    .end local v0    # "resolutions":[I
    :cond_2
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    .restart local v0    # "resolutions":[I
    goto :goto_0

    .line 120
    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x8
        0x9
    .end array-data

    .line 126
    :array_1
    .array-data 4
        0x6
        0x2
        0x0
    .end array-data

    .line 129
    :array_2
    .array-data 4
        0x6
        0xb
        0x2
        0x0
    .end array-data
.end method

.method public static getPreferedResolutions(I)[I
    .locals 3
    .param p0, "index"    # I

    .prologue
    const/16 v2, 0xc

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "prefered":[I
    if-nez p0, :cond_0

    .line 139
    const/4 v1, 0x4

    new-array v0, v1, [I

    .end local v0    # "prefered":[I
    fill-array-data v0, :array_0

    .line 174
    .restart local v0    # "prefered":[I
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p0, :cond_1

    .line 144
    new-array v0, v2, [I

    .end local v0    # "prefered":[I
    fill-array-data v0, :array_1

    .restart local v0    # "prefered":[I
    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p0, :cond_2

    .line 157
    const/4 v1, 0x3

    new-array v0, v1, [I

    .end local v0    # "prefered":[I
    fill-array-data v0, :array_2

    .restart local v0    # "prefered":[I
    goto :goto_0

    .line 161
    :cond_2
    new-array v0, v2, [I

    .end local v0    # "prefered":[I
    fill-array-data v0, :array_3

    .restart local v0    # "prefered":[I
    goto :goto_0

    .line 139
    nop

    :array_0
    .array-data 4
        0x66
        0x67
        0x64
        0x65
    .end array-data

    .line 144
    :array_1
    .array-data 4
        0x6f
        0x70
        0x6a
        0x6b
        0x6c
        0x6d
        0x68
        0x69
        0x66
        0x67
        0x64
        0x65
    .end array-data

    .line 157
    :array_2
    .array-data 4
        0x66
        0x6a
        0x64
    .end array-data

    .line 161
    :array_3
    .array-data 4
        0x6f
        0x70
        0x6a
        0x6b
        0x6c
        0x6d
        0x68
        0x69
        0x66
        0x67
        0x65
        0x64
    .end array-data
.end method
