.class public final enum Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
.super Ljava/lang/Enum;
.source "MdIratInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IratType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

.field public static final enum IRAT_TYPE_EHRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

.field public static final enum IRAT_TYPE_FAILED:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

.field public static final enum IRAT_TYPE_HRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

.field public static final enum IRAT_TYPE_LTE_EHRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

.field public static final enum IRAT_TYPE_LTE_HRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

.field public static final enum IRAT_TYPE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

.field private static sIratTypeStrings:[Ljava/lang/String;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    const-string v1, "IRAT_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 13
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    const-string v1, "IRAT_TYPE_LTE_EHRPD"

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_EHRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 14
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    const-string v1, "IRAT_TYPE_LTE_HRPD"

    invoke-direct {v0, v1, v6, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_HRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 15
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    const-string v1, "IRAT_TYPE_EHRPD_LTE"

    invoke-direct {v0, v1, v7, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_EHRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 16
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    const-string v1, "IRAT_TYPE_HRPD_LTE"

    invoke-direct {v0, v1, v8, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_HRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 17
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    const-string v1, "IRAT_TYPE_FAILED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_FAILED:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_EHRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_HRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_EHRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_HRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_FAILED:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unknown type"

    aput-object v1, v0, v4

    const-string v1, "LTE -> EHRPD"

    aput-object v1, v0, v5

    const-string v1, "LTE -> HRPD"

    aput-object v1, v0, v6

    const-string v1, "EHRPD -> LTE"

    aput-object v1, v0, v7

    const-string v1, "HRPD -> LTE"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "IRAT failed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->sIratTypeStrings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->mCode:I

    .line 32
    return-void
.end method

.method public static getIratTypeFromInt(I)Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    .locals 4
    .param p0, "typeInt"    # I

    .prologue
    .line 54
    packed-switch p0, :pswitch_data_0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized IratType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :pswitch_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_UNKNOWN:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 77
    .local v0, "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    :goto_0
    return-object v0

    .line 59
    .end local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    :pswitch_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_EHRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 60
    .restart local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    goto :goto_0

    .line 62
    .end local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    :pswitch_2
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_HRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 63
    .restart local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    goto :goto_0

    .line 65
    .end local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    :pswitch_3
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_EHRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 66
    .restart local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    goto :goto_0

    .line 68
    .end local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    :pswitch_4
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_HRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 69
    .restart local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    goto :goto_0

    .line 71
    .end local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    :pswitch_5
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_FAILED:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    .line 72
    .restart local v0    # "type":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    return-object v0
.end method


# virtual methods
.method public isFailCase()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_FAILED:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFallbackCase()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_HRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_HRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIpContinuousCase()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_LTE_EHRPD:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->IRAT_TYPE_EHRPD_LTE:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->sIratTypeStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->mCode:I

    aget-object v0, v0, v1

    return-object v0
.end method
