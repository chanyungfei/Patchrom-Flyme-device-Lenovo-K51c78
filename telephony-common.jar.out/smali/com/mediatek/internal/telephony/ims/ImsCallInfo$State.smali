.class final enum Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
.super Ljava/lang/Enum;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

.field public static final enum ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

.field public static final enum ALERTING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

.field public static final enum HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

.field public static final enum INCOMING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

.field public static final enum INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 249
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    const-string v1, "HOLDING"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 250
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 251
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 252
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 247
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->$VALUES:[Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

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
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    const-class v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->$VALUES:[Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    return-object v0
.end method
