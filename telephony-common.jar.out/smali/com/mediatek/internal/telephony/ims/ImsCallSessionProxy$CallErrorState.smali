.class final enum Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
.super Ljava/lang/Enum;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallErrorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

.field public static final enum DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

.field public static final enum DISCONNECT:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

.field public static final enum IDLE:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    const-string v1, "DIAL"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->$VALUES:[Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->$VALUES:[Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    return-object v0
.end method
