.class public final enum Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;
.super Ljava/lang/Enum;
.source "NetworkAgentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkAgentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandoverType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

.field public static final enum CONNECT:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

.field public static final enum DISCONNECT:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

.field public static final enum NONE:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->NONE:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    new-instance v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->CONNECT:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    new-instance v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->DISCONNECT:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->NONE:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->CONNECT:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->DISCONNECT:Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->$VALUES:[Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->$VALUES:[Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkAgentInfo$HandoverType;

    return-object v0
.end method
