.class final enum Lcom/android/server/display/WifiDisplayController$SinkState;
.super Ljava/lang/Enum;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SinkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/WifiDisplayController$SinkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/WifiDisplayController$SinkState;

.field public static final enum SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

.field public static final enum SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

.field public static final enum SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

.field public static final enum SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

.field public static final enum SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    new-instance v0, Lcom/android/server/display/WifiDisplayController$SinkState;

    const-string v1, "SINK_STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController$SinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 390
    new-instance v0, Lcom/android/server/display/WifiDisplayController$SinkState;

    const-string v1, "SINK_STATE_WAITING_P2P_CONNECTION"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/WifiDisplayController$SinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 391
    new-instance v0, Lcom/android/server/display/WifiDisplayController$SinkState;

    const-string v1, "SINK_STATE_WIFI_P2P_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/WifiDisplayController$SinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 392
    new-instance v0, Lcom/android/server/display/WifiDisplayController$SinkState;

    const-string v1, "SINK_STATE_WAITING_RTSP"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/WifiDisplayController$SinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 393
    new-instance v0, Lcom/android/server/display/WifiDisplayController$SinkState;

    const-string v1, "SINK_STATE_RTSP_CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/WifiDisplayController$SinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 388
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/display/WifiDisplayController$SinkState;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->$VALUES:[Lcom/android/server/display/WifiDisplayController$SinkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/WifiDisplayController$SinkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 388
    const-class v0, Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WifiDisplayController$SinkState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/WifiDisplayController$SinkState;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->$VALUES:[Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v0}, [Lcom/android/server/display/WifiDisplayController$SinkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/WifiDisplayController$SinkState;

    return-object v0
.end method
