.class public final enum Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
.super Ljava/lang/Enum;
.source "IccCardType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IccCardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SvlteCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum CARD_NOT_INSERTED:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum INVALID_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum LOCKED_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

.field public static final enum USIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "INVALID_CARD"

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->INVALID_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 35
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "UIM_CARD"

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 36
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "SIM_CARD"

    invoke-direct {v0, v1, v6, v6}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 37
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "UIM_SIM_CARD"

    invoke-direct {v0, v1, v7, v7}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 38
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "UNKNOW_CARD"

    invoke-direct {v0, v1, v8, v8}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 39
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "CT_3G_UIM_CARD"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 40
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "CT_UIM_SIM_CARD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 41
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "PIN_LOCK_CARD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 42
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "CT_4G_UICC_CARD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 43
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "NOT_CT_UICC_CARD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 44
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "LOCKED_CARD"

    const/16 v2, 0xa

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->LOCKED_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 45
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "USIM_CARD"

    const/16 v2, 0xb

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->USIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 46
    new-instance v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    const-string v1, "CARD_NOT_INSERTED"

    const/16 v2, 0xc

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CARD_NOT_INSERTED:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 33
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    sget-object v1, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->INVALID_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->LOCKED_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->USIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CARD_NOT_INSERTED:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->$VALUES:[Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->mValue:I

    .line 139
    return-void
.end method

.method public static getCardTypeFromInt(I)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    .locals 4
    .param p0, "cardTypeInt"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->INVALID_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 63
    .local v0, "cardType":Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    invoke-static {}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->values()[Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v1

    .line 64
    .local v1, "cardTypes":[Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 65
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 66
    aget-object v0, v1, v2

    .line 70
    :cond_0
    return-object v0

    .line 64
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static transformCardTypeFromString(Ljava/lang/String;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    .locals 1
    .param p0, "cardType"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "USIM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->USIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-string v0, "SIM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->INVALID_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->$VALUES:[Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->mValue:I

    return v0
.end method

.method public is3GCard()Z
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is4GCard()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualModeCard()Z
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOPO9Card()Z
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidCardType()Z
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->INVALID_CARD:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
