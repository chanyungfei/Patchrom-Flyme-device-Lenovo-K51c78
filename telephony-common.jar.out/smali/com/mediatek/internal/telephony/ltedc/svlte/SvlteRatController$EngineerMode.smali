.class public final enum Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;
.super Ljava/lang/Enum;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

.field public static final enum ENGINEER_MODE_CDMA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

.field public static final enum ENGINEER_MODE_GSM_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

.field public static final enum ENGINEER_MODE_NONE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    const-string v1, "ENGINEER_MODE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_NONE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    .line 145
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    const-string v1, "ENGINEER_MODE_CDMA_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_CDMA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    .line 146
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    const-string v1, "ENGINEER_MODE_GSM_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_GSM_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_NONE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_CDMA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_GSM_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

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
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    const-class v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    return-object v0
.end method
