.class final enum Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;
.super Ljava/lang/Enum;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ChannelConflictEvt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

.field public static final enum EVT_AP_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

.field public static final enum EVT_AP_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

.field public static final enum EVT_WFD_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

.field public static final enum EVT_WFD_P2P_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 378
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    const-string v1, "EVT_AP_DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .line 379
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    const-string v1, "EVT_AP_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .line 380
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    const-string v1, "EVT_WFD_P2P_DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .line 381
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    const-string v1, "EVT_WFD_P2P_CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    .line 377
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_AP_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_DISCONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->EVT_WFD_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->$VALUES:[Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

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
    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 377
    const-class v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->$VALUES:[Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    invoke-virtual {v0}, [Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/WifiDisplayController$ChannelConflictEvt;

    return-object v0
.end method
