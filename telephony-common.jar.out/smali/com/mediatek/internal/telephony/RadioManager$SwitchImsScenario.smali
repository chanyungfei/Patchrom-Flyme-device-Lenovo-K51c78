.class public final enum Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;
.super Ljava/lang/Enum;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchImsScenario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

.field public static final enum SWITCH_IMS_RADIO_NOT_AVAILABLE:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

.field public static final enum SWITCH_IMS_RADIO_ON_OFF:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

.field public static final enum SWITCH_IMS_RUNTIME:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    const-string v1, "SWITCH_IMS_RADIO_ON_OFF"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->SWITCH_IMS_RADIO_ON_OFF:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    .line 184
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    const-string v1, "SWITCH_IMS_RUNTIME"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->SWITCH_IMS_RUNTIME:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    .line 185
    new-instance v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    const-string v1, "SWITCH_IMS_RADIO_NOT_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->SWITCH_IMS_RADIO_NOT_AVAILABLE:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    .line 182
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->SWITCH_IMS_RADIO_ON_OFF:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->SWITCH_IMS_RUNTIME:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->SWITCH_IMS_RADIO_NOT_AVAILABLE:Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->$VALUES:[Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const-class v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->$VALUES:[Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/RadioManager$SwitchImsScenario;

    return-object v0
.end method
