.class final enum Lcom/android/server/display/WifiDisplayController$ChannelConflictState;
.super Ljava/lang/Enum;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ChannelConflictState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/WifiDisplayController$ChannelConflictState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

.field public static final enum STATE_AP_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

.field public static final enum STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

.field public static final enum STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

.field public static final enum STATE_WFD_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .line 372
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    const-string v1, "STATE_AP_DISCONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .line 373
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    const-string v1, "STATE_WFD_CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_WFD_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .line 374
    new-instance v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    const-string v1, "STATE_AP_CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    .line 370
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_IDLE:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_DISCONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_WFD_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->STATE_AP_CONNECTING:Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->$VALUES:[Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

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
    .line 370
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/WifiDisplayController$ChannelConflictState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 370
    const-class v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/WifiDisplayController$ChannelConflictState;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->$VALUES:[Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    invoke-virtual {v0}, [Lcom/android/server/display/WifiDisplayController$ChannelConflictState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/WifiDisplayController$ChannelConflictState;

    return-object v0
.end method
