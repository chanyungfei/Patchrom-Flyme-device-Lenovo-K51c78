.class synthetic Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;
.super Ljava/lang/Object;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$internal$telephony$ims$ImsCallSessionProxy$CallErrorState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1556
    invoke-static {}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->values()[Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;->$SwitchMap$com$mediatek$internal$telephony$ims$ImsCallSessionProxy$CallErrorState:[I

    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;->$SwitchMap$com$mediatek$internal$telephony$ims$ImsCallSessionProxy$CallErrorState:[I

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$2;->$SwitchMap$com$mediatek$internal$telephony$ims$ImsCallSessionProxy$CallErrorState:[I

    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
