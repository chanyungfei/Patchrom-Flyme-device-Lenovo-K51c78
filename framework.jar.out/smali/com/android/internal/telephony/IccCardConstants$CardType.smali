.class public final enum Lcom/android/internal/telephony/IccCardConstants$CardType;
.super Ljava/lang/Enum;
.source "IccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardConstants$CardType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum CARD_NOT_INSERTED:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum CT_3G_UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum CT_4G_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum LOCKED_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum NOT_CT_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum PIN_LOCK_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field public static final enum UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 140
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "UIM_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 141
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "SIM_CARD"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "UIM_SIM_CARD"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "UNKNOW_CARD"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "CT_3G_UIM_CARD"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "CT_UIM_SIM_CARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "PIN_LOCK_CARD"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->PIN_LOCK_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "CT_4G_UICC_CARD"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "NOT_CT_UICC_CARD"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "LOCKED_CARD"

    const/16 v2, 0x9

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->LOCKED_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    const-string v1, "CARD_NOT_INSERTED"

    const/16 v2, 0xa

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CARD_NOT_INSERTED:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 139
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$CardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$CardType;->SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$CardType;->UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$CardType;->UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->PIN_LOCK_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->LOCKED_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$CardType;->CARD_NOT_INSERTED:Lcom/android/internal/telephony/IccCardConstants$CardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$CardType;

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
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput p3, p0, Lcom/android/internal/telephony/IccCardConstants$CardType;->mValue:I

    .line 213
    return-void
.end method

.method public static getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;
    .locals 4
    .param p0, "cardTypeInt"    # I

    .prologue
    .line 165
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CARD_NOT_INSERTED:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 166
    .local v0, "cardType":Lcom/android/internal/telephony/IccCardConstants$CardType;
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$CardType;->values()[Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v1

    .line 167
    .local v1, "cardTypes":[Lcom/android/internal/telephony/IccCardConstants$CardType;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 168
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 169
    aget-object v0, v1, v2

    .line 173
    :cond_0
    return-object v0

    .line 167
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const-class v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$CardType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardConstants$CardType;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardConstants$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardConstants$CardType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/internal/telephony/IccCardConstants$CardType;->mValue:I

    return v0
.end method

.method public is3GCard()Z
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

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
    .line 181
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

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
    .line 198
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

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
    .line 207
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
