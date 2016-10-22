.class public final enum Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
.super Ljava/lang/Enum;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoamingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field public static final enum ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field public static final enum ROAMING_MODE_JPKR_CDMA:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field public static final enum ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field public static final enum ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const-string v1, "ROAMING_MODE_HOME"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 117
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const-string v1, "ROAMING_MODE_NORMAL_ROAMING"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 118
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const-string v1, "ROAMING_MODE_JPKR_CDMA"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_JPKR_CDMA:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 119
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const-string v1, "ROAMING_MODE_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_JPKR_CDMA:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method


# virtual methods
.method public isCdmaOn()Z
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_JPKR_CDMA:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsmOn()Z
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLteOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 129
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p0, v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
