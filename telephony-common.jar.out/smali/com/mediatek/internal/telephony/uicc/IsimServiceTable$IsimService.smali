.class public final enum Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
.super Ljava/lang/Enum;
.source "IsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsimService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum UICC_ACCESS_IMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "PCSCF_ADDRESS"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 28
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "GBA"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 29
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "HTTP_DIGEST"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 30
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "GBA_LOCAL_KEY_ESTABLISHMENT"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 31
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "PCSCF_DISCOVERY"

    invoke-direct {v0, v1, v7}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 32
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 33
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SMSR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 34
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SM_OVER_IP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 35
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "COMMUNICATION_CONTROL_BY_ISIM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 36
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "UICC_ACCESS_IMS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->UICC_ACCESS_IMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->HTTP_DIGEST:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA_LOCAL_KEY_ESTABLISHMENT:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SMSR:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVER_IP:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->COMMUNICATION_CONTROL_BY_ISIM:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->UICC_ACCESS_IMS:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object v0
.end method
