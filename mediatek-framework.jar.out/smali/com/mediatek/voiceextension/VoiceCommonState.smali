.class public Lcom/mediatek/voiceextension/VoiceCommonState;
.super Ljava/lang/Object;
.source "VoiceCommonState.java"


# static fields
.field public static final API_TYPE_COMMAND_COMMANDS_SET:I = 0x8

.field public static final API_TYPE_COMMAND_IDLE:I = 0x1

.field public static final API_TYPE_COMMAND_NOTIFY_ERROR:I = 0x7

.field public static final API_TYPE_COMMAND_RECOGNITION_PAUSE:I = 0x4

.field public static final API_TYPE_COMMAND_RECOGNITION_RESULT:I = 0x6

.field public static final API_TYPE_COMMAND_RECOGNITION_RESUME:I = 0x5

.field public static final API_TYPE_COMMAND_RECOGNITION_START:I = 0x2

.field public static final API_TYPE_COMMAND_RECOGNITION_STOP:I = 0x3

.field public static final FEATURE_TYPE_COMMAND:I = 0x1

.field public static final FEATURE_TYPE_COMMAND_NAME:Ljava/lang/String; = "Command"

.field public static final FEATURE_TYPE_PASSPHRASE:I = 0x3

.field public static final FEATURE_TYPE_PASSPHRASE_NAME:Ljava/lang/String; = "Passphrase"

.field public static final FEATURE_TYPE_SEARCH:I = 0x2

.field public static final FEATURE_TYPE_SEARCH_NAME:Ljava/lang/String; = "Search"

.field public static final RET_COMMAND_DATA_INVALID:I = 0x12d

.field public static final RET_COMMAND_FILE_ILLEGAL:I = 0x12e

.field private static final RET_COMMAND_INDEX:I = 0x12c

.field public static final RET_COMMAND_NUM_EXCEED_LIMIT:I = 0x12f

.field public static final RET_COMMON_FAILURE:I = -0x1

.field private static final RET_COMMON_INDEX:I = 0x0

.field public static final RET_COMMON_LISTENER_ALREADY_SET:I = 0x7

.field public static final RET_COMMON_LISTENER_ILLEGAL:I = 0x5

.field public static final RET_COMMON_LISTENER_NEVER_SET:I = 0x6

.field public static final RET_COMMON_MIC_INIT_FAILED:I = 0x3

.field public static final RET_COMMON_MIC_OCCUPIED:I = 0x4

.field public static final RET_COMMON_PROCESS_ILLEGAL:I = 0xe

.field public static final RET_COMMON_RECOGNITION_ALREADY_PAUSED:I = 0xb

.field public static final RET_COMMON_RECOGNITION_ALREADY_STARTED:I = 0xa

.field public static final RET_COMMON_RECOGNITION_NEVER_PAUSED:I = 0x9

.field public static final RET_COMMON_RECOGNITION_NEVER_STARTED:I = 0x8

.field public static final RET_COMMON_SERVICE_DISCONNECTTED:I = 0xd

.field public static final RET_COMMON_SERVICE_NOT_EXIST:I = 0xc

.field public static final RET_COMMON_STORAGE_WRITE_FAILED:I = 0x2

.field public static final RET_COMMON_SUCCESS:I = 0x1

.field public static final RET_SET_ALREADY_EXIST:I = 0xc9

.field public static final RET_SET_EXCEED_LIMIT:I = 0xcc

.field public static final RET_SET_ILLEGAL:I = 0xcb

.field private static final RET_SET_INDEX:I = 0xc8

.field public static final RET_SET_NOT_EXIST:I = 0xca

.field public static final RET_SET_NOT_SELECTED:I = 0xce

.field public static final RET_SET_OCCUPIED:I = 0xcf

.field public static final RET_SET_SELECTED:I = 0xcd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
