.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADDRESS_SUPPORT_AAS:I = 0x8

.field private static final ADDRESS_SUPPORT_SNE:I = 0x9

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x9

.field protected static final ADN_SUB:I = 0x2

.field private static final DBG:Z = true

.field public static final ERROR_ICC_PROVIDER_ADN_LIST_NOT_EXIST:I = -0xb

.field public static final ERROR_ICC_PROVIDER_ANR_SAVE_FAILURE:I = -0xe

.field public static final ERROR_ICC_PROVIDER_ANR_TOO_LONG:I = -0x6

.field public static final ERROR_ICC_PROVIDER_EMAIL_FULL:I = -0xc

.field public static final ERROR_ICC_PROVIDER_EMAIL_TOOLONG:I = -0xd

.field public static final ERROR_ICC_PROVIDER_GENERIC_FAILURE:I = -0xa

.field public static final ERROR_ICC_PROVIDER_NOT_READY:I = -0x4

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_PASSWORD_ERROR:I = -0x5

.field public static final ERROR_ICC_PROVIDER_STORAGE_FULL:I = -0x3

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field public static final ERROR_ICC_PROVIDER_WRONG_ADN_FORMAT:I = -0xf

.field protected static final FDN:I = 0x3

.field protected static final FDN_SUB:I = 0x4

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field protected static final STR_ANR:Ljava/lang/String; = "anr"

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_INDEX:Ljava/lang/String; = "index"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field protected static final UPB:I = 0x7

.field private static final UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final UPB_SUB:I = 0x8

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "additionalNumber"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sne"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/subId/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/subId/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/subId/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr/subId/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 683
    const/4 v10, 0x0

    .line 691
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 692
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 693
    const-string v4, ""

    const-string v5, ""

    move/from16 v2, p6

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 701
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 702
    return v10

    .line 696
    :catch_0
    move-exception v9

    .line 697
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 698
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 699
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "strAnr"    # Ljava/lang/String;
    .param p5, "strEmail"    # Ljava/lang/String;
    .param p6, "strGas"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUSIMRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 713
    const/4 v15, 0x0

    .line 719
    .local v15, "result":I
    const/4 v13, 0x0

    .line 720
    .local v13, "emails":[Ljava/lang/String;
    if-eqz p5, :cond_0

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 722
    const/4 v2, 0x0

    aput-object p5, v13, v2

    .line 726
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 728
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 729
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move/from16 v2, p7

    move/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 737
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUsimRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 738
    return v15

    .line 732
    :catch_0
    move-exception v14

    .line 733
    .local v14, "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 734
    .end local v14    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 735
    .local v14, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 863
    const/4 v10, 0x0

    .line 866
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 867
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 868
    const-string v6, ""

    const-string v7, ""

    move/from16 v2, p6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 876
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 877
    return v10

    .line 871
    :catch_0
    move-exception v9

    .line 872
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 873
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 874
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .prologue
    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 885
    const/4 v8, 0x0

    .line 888
    .local v8, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 890
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 891
    const-string v3, ""

    const-string v4, ""

    move v1, p4

    move v2, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 898
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 899
    return v8

    .line 893
    :catch_0
    move-exception v7

    .line 894
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 895
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 896
    .local v7, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "subId"    # I

    .prologue
    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 908
    const/4 v15, 0x0

    .line 911
    .local v15, "result":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 913
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 914
    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v2, p5

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 922
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 923
    return v15

    .line 917
    :catch_0
    move-exception v14

    .line 918
    .local v14, "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 919
    .end local v14    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 920
    .local v14, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUsimRecordFromEfByIndex(III)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "subId"    # I

    .prologue
    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 930
    const/4 v10, 0x0

    .line 933
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 935
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 936
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p3

    move v2, p1

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 944
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 945
    return v10

    .line 939
    :catch_0
    move-exception v9

    .line 940
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 941
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 942
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2

    .prologue
    .line 1006
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1009
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    return-object v0
.end method

.method private getRequestSubId(Landroid/net/Uri;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1016
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isUICCCard(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1068
    const/4 v2, 0x0

    .line 1071
    .local v2, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1073
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1074
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->isUICCCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1081
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v2

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1078
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1079
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 11
    .param p1, "efType"    # I

    .prologue
    .line 172
    iget-object v8, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v7

    .line 173
    .local v7, "subIdList":[I
    array-length v8, v7

    new-array v5, v8, [Landroid/database/Cursor;

    .line 175
    .local v5, "result":[Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 176
    .local v1, "i":I
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v6, v0, v3

    .line 177
    .local v6, "subId":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v8

    aput-object v8, v5, v2

    .line 178
    const-string v8, "IccProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAllSimContacts: subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 181
    .end local v6    # "subId":I
    :cond_0
    new-instance v8, Landroid/database/MergeCursor;

    invoke-direct {v8, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v8
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "efType"    # I
    .param p2, "subId"    # I

    .prologue
    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x0

    .line 649
    .local v0, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 650
    .local v4, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 651
    invoke-interface {v4, p2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 659
    .end local v4    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 661
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 662
    .local v5, "size":I
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 664
    .local v1, "cursor":Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 666
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 667
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v1, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 666
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 653
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :catch_0
    move-exception v2

    .line 654
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 656
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 672
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 19
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 955
    sget-object v17, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v13, v0

    .line 956
    .local v13, "len":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 957
    new-array v6, v13, [Ljava/lang/Object;

    .line 958
    .local v6, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    .line 959
    .local v3, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 960
    .local v15, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 961
    .local v9, "emails":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 962
    .local v4, "anr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v10

    .line 963
    .local v10, "grpIds":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 965
    .local v12, "index":Ljava/lang/String;
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v13, v0, :cond_0

    .line 966
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v2

    .line 967
    .local v2, "aasIndex":I
    const/16 v17, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v17

    .line 969
    .end local v2    # "aasIndex":I
    :cond_0
    const/16 v17, 0x9

    move/from16 v0, v17

    if-lt v13, v0, :cond_1

    .line 970
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v16

    .line 971
    .local v16, "sne":Ljava/lang/String;
    const/16 v17, 0x8

    aput-object v16, v6, v17

    .line 974
    .end local v16    # "sne":Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadRecord: record:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 976
    const/16 v17, 0x0

    aput-object v12, v6, v17

    .line 977
    const/16 v17, 0x1

    aput-object v3, v6, v17

    .line 978
    const/16 v17, 0x2

    aput-object v15, v6, v17

    .line 980
    if-eqz v9, :cond_3

    .line 981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .local v8, "emailString":Ljava/lang/StringBuilder;
    move-object v5, v9

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v14, :cond_2

    aget-object v7, v5, v11

    .line 984
    .local v7, "email":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Adding email:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 989
    .end local v7    # "email":Ljava/lang/String;
    :cond_2
    const/16 v17, 0x3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    .line 992
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "emailString":Ljava/lang/StringBuilder;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    :cond_3
    const/16 v17, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    .line 993
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadRecord Adding anrs:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x4

    aget-object v18, v6, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 995
    const/16 v17, 0x5

    aput-object v10, v6, v17

    .line 996
    const/16 v17, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v17

    .line 997
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 999
    .end local v3    # "alphaTag":Ljava/lang/String;
    .end local v4    # "anr":Ljava/lang/String;
    .end local v6    # "contact":[Ljava/lang/Object;
    .end local v9    # "emails":[Ljava/lang/String;
    .end local v10    # "grpIds":Ljava/lang/String;
    .end local v12    # "index":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1002
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 365
    .local v0, "len":I
    move-object v1, p1

    .line 367
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 368
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 371
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 749
    const/4 v10, 0x0

    .line 752
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 753
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move/from16 v2, p7

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 754
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 762
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 763
    return v10

    .line 757
    :catch_0
    move-exception v9

    .line 758
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 760
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 772
    const/4 v8, 0x0

    .line 775
    .local v8, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 777
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p6

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move-object v6, p5

    .line 778
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 786
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 787
    return v8

    .line 781
    :catch_0
    move-exception v7

    .line 782
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 784
    .local v7, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;II)I
    .locals 5
    .param p1, "efType"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # I
    .param p4, "subId"    # I

    .prologue
    .line 1048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsByIndexWithError subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1050
    const/4 v2, 0x0

    .line 1053
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1055
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1056
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsByIndexWithError(IILcom/android/internal/telephony/uicc/AdnRecord;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1063
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsByIndexWithError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1064
    return v2

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1061
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 5
    .param p1, "efType"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "subId"    # I

    .prologue
    .line 1025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsBySearchWithError subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oldAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1028
    const/4 v2, 0x0

    .line 1031
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1033
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1034
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsBySearchWithError(IILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1041
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsBySearchWithError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1042
    return v2

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1038
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1039
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "strAnr"    # Ljava/lang/String;
    .param p7, "strEmail"    # Ljava/lang/String;
    .param p8, "subId"    # I

    .prologue
    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 799
    const/4 v15, 0x0

    .line 801
    .local v15, "result":I
    const/4 v13, 0x0

    .line 802
    .local v13, "emails":[Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 803
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 804
    const/4 v2, 0x0

    aput-object p7, v13, v2

    .line 808
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 810
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 811
    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move/from16 v2, p8

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 820
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 821
    return v15

    .line 815
    :catch_0
    move-exception v14

    .line 816
    .local v14, "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v14    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 818
    .local v14, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 12
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "strAnr"    # Ljava/lang/String;
    .param p6, "strEmail"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 833
    const/4 v11, 0x0

    .line 835
    .local v11, "result":I
    const/4 v8, 0x0

    .line 836
    .local v8, "emails":[Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 837
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 838
    const/4 v2, 0x0

    aput-object p6, v8, v2

    .line 842
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 844
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 845
    const/4 v7, 0x0

    move/from16 v2, p7

    move v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v9, p2

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 853
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 854
    return v11

    .line 848
    :catch_0
    move-exception v10

    .line 849
    .local v10, "ex":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    .end local v10    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 851
    .local v10, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 382
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 383
    .local v17, "match":I
    packed-switch v17, :pswitch_data_0

    .line 421
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 386
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    .line 425
    .local v7, "subId":I
    :cond_0
    :goto_0
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 428
    const-string v4, ""

    .line 429
    .local v4, "tag":Ljava/lang/String;
    const-string v5, ""

    .line 430
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 431
    .local v6, "emails":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 432
    .local v13, "pin2":Ljava/lang/String;
    const/16 v19, -0x1

    .line 434
    .local v19, "nIndex":I
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 435
    .local v22, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 437
    .local v18, "n":I
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_7

    .line 438
    aget-object v20, v22, v18

    .line 440
    .local v20, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 442
    const/16 v2, 0x3d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 443
    .local v15, "index":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_2

    .line 444
    const-string v2, "IccProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolve: bad whereClause parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v7    # "subId":I
    .end local v13    # "pin2":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v18    # "n":I
    .end local v19    # "nIndex":I
    .end local v20    # "param":Ljava/lang/String;
    .end local v22    # "tokens":[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 391
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 392
    .restart local v7    # "subId":I
    goto :goto_0

    .line 395
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 396
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    .line 397
    .restart local v7    # "subId":I
    goto :goto_0

    .line 400
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 401
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 402
    .restart local v7    # "subId":I
    goto :goto_0

    .line 405
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_5
    const/16 v3, 0x4f30

    .line 406
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    .line 407
    .restart local v7    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 413
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_6
    const/16 v3, 0x4f30

    .line 414
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 415
    .restart local v7    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 448
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    .restart local v15    # "index":I
    .restart local v18    # "n":I
    .restart local v19    # "nIndex":I
    .restart local v20    # "param":Ljava/lang/String;
    .restart local v22    # "tokens":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 449
    .local v16, "key":Ljava/lang/String;
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 450
    .local v23, "val":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing key is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " index of = is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " val is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 460
    const-string v2, "index"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_1

    .line 462
    :cond_3
    const-string v2, "tag"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 464
    :cond_4
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 466
    :cond_5
    const-string v2, "emails"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 468
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 469
    :cond_6
    const-string v2, "pin2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 474
    .end local v15    # "index":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "param":Ljava/lang/String;
    .end local v23    # "val":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    .line 475
    .local v21, "result":I
    if-lez v19, :cond_a

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete index is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 477
    const/4 v2, 0x7

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    .line 478
    :cond_8
    const-string v2, "deleteUsimRecordFromEfByIndex "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v21

    :goto_2
    move/from16 v2, v21

    .line 508
    :goto_3
    return v2

    .line 481
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v13, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v21

    goto :goto_2

    .line 486
    :cond_a
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 487
    const/4 v2, -0x5

    goto :goto_3

    .line 490
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 491
    const/4 v2, 0x0

    goto :goto_3

    .line 494
    :cond_c
    const/4 v2, 0x7

    move/from16 v0, v17

    if-eq v2, v0, :cond_d

    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_f

    .line 495
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v8, 0x8

    if-lt v2, v8, :cond_e

    .line 496
    const-string v2, "updateUsimPBRecordsBySearchWithError "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 497
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v8, ""

    invoke-direct {v2, v4, v5, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v7}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v21

    .line 506
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v2, v21

    .line 508
    goto :goto_3

    :cond_e
    move-object/from16 v2, p0

    .line 500
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v21

    goto :goto_4

    :cond_f
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v14, v7

    .line 503
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    goto :goto_4

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 186
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 27
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 207
    const/4 v15, 0x0

    .line 211
    .local v15, "pin2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 214
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 215
    .local v20, "match":I
    packed-switch v20, :pswitch_data_0

    .line 255
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 218
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 259
    .local v9, "subId":I
    :cond_0
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "number":Ljava/lang/String;
    const/16 v22, 0x0

    .line 262
    .local v22, "result":I
    const/4 v2, 0x7

    move/from16 v0, v20

    if-eq v2, v0, :cond_1

    const/16 v2, 0x8

    move/from16 v0, v20

    if-ne v2, v0, :cond_a

    .line 263
    :cond_1
    const-string v2, "gas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "strGas":Ljava/lang/String;
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "strAnr":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "strEmail":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_9

    .line 267
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 268
    .local v17, "aasIndex":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 269
    const-string v5, ""

    .line 271
    :cond_2
    if-nez v4, :cond_3

    .line 272
    const-string v4, ""

    .line 274
    :cond_3
    new-instance v21, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v21, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 276
    const-string v2, "anr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    const-string v2, "anr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 278
    .local v25, "strAnr2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert anr2: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 279
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 281
    .end local v25    # "strAnr2":Ljava/lang/String;
    :cond_4
    const-string v2, "anr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 282
    const-string v2, "anr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 283
    .local v26, "strAnr3":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert anr3: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 286
    .end local v26    # "strAnr3":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 287
    const/16 v19, 0x0

    .line 288
    .local v19, "emails":[Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 289
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 290
    const/4 v2, 0x0

    aput-object v7, v19, v2

    .line 292
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 293
    if-eqz v17, :cond_7

    .line 294
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 296
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x9

    if-lt v2, v10, :cond_8

    .line 297
    const-string v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 298
    .local v24, "sne":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 301
    .end local v24    # "sne":Ljava/lang/String;
    :cond_8
    const-string v2, "updateUsimPBRecordsBySearchWithError "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 302
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    invoke-direct {v2, v10, v11, v12}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v2, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v22

    .line 313
    .end local v6    # "strAnr":Ljava/lang/String;
    .end local v7    # "strEmail":Ljava/lang/String;
    .end local v8    # "strGas":Ljava/lang/String;
    .end local v17    # "aasIndex":Ljava/lang/Integer;
    .end local v19    # "emails":[Ljava/lang/String;
    .end local v21    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v18, "buf":Ljava/lang/StringBuilder;
    if-gtz v22, :cond_b

    .line 316
    const-string v2, "error/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 351
    .local v23, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 360
    return-object v23

    .line 222
    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v9    # "subId":I
    .end local v18    # "buf":Ljava/lang/StringBuilder;
    .end local v22    # "result":I
    .end local v23    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 223
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 224
    .restart local v9    # "subId":I
    goto/16 :goto_0

    .line 227
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 228
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 229
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 230
    goto/16 :goto_0

    .line 233
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 234
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 235
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 236
    goto/16 :goto_0

    .line 239
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_5
    const/16 v3, 0x4f30

    .line 240
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 241
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 247
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_6
    const/16 v3, 0x4f30

    .line 248
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 249
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 305
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "strAnr":Ljava/lang/String;
    .restart local v7    # "strEmail":Ljava/lang/String;
    .restart local v8    # "strGas":Ljava/lang/String;
    .restart local v22    # "result":I
    :cond_9
    const-string v2, "addUsimRecordToEf "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 306
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto/16 :goto_1

    .line 310
    .end local v6    # "strAnr":Ljava/lang/String;
    .end local v7    # "strEmail":Ljava/lang/String;
    .end local v8    # "strGas":Ljava/lang/String;
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move-object v12, v4

    move-object v13, v5

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto/16 :goto_1

    .line 319
    .restart local v18    # "buf":Ljava/lang/StringBuilder;
    :cond_b
    packed-switch v20, :pswitch_data_1

    .line 346
    :goto_3
    :pswitch_7
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 321
    :pswitch_8
    const-string v2, "adn/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 325
    :pswitch_9
    const-string v2, "adn/subId/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 329
    :pswitch_a
    const-string v2, "fdn/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 333
    :pswitch_b
    const-string v2, "fdn/subId/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 337
    :pswitch_c
    const-string v2, "pbr/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 341
    :pswitch_d
    const-string v2, "pbr/subId/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 319
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x6f49

    const/16 v4, 0x6f3b

    const/16 v3, 0x4f30

    const/16 v2, 0x6f3a

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 143
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_8
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 30
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 513
    const/16 v19, 0x0

    .line 517
    .local v19, "pin2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 519
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v24

    .line 520
    .local v24, "match":I
    packed-switch v24, :pswitch_data_0

    .line 560
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 523
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 563
    .local v9, "subId":I
    :cond_0
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 564
    .local v12, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 566
    .local v13, "number":Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "newTag":Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 568
    .local v6, "newNumber":Ljava/lang/String;
    const-string v2, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 569
    .local v23, "idInt":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 570
    .local v4, "index":I
    if-eqz v23, :cond_1

    .line 571
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 573
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update: index="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 574
    const/16 v26, 0x0

    .line 575
    .local v26, "result":I
    const/4 v2, 0x7

    move/from16 v0, v24

    if-eq v2, v0, :cond_2

    const/16 v2, 0x8

    move/from16 v0, v24

    if-ne v2, v0, :cond_d

    .line 576
    :cond_2
    const-string v2, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 577
    .local v7, "strAnr":Ljava/lang/String;
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, "strEmail":Ljava/lang/String;
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 580
    .local v21, "aasIndex":Ljava/lang/Integer;
    const-string v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 581
    .local v27, "sne":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 582
    const-string v6, ""

    .line 584
    :cond_3
    if-nez v5, :cond_4

    .line 585
    const-string v5, ""

    .line 587
    :cond_4
    new-instance v25, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 588
    .local v25, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 589
    const-string v2, "newAnr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 590
    const-string v2, "newAnr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 591
    .local v28, "strAnr2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update newAnr2: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 592
    const/4 v2, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 594
    .end local v28    # "strAnr2":Ljava/lang/String;
    :cond_5
    const-string v2, "newAnr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 595
    const-string v2, "newAnr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 596
    .local v29, "strAnr3":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update newAnr3: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 597
    const/4 v2, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 599
    .end local v29    # "strAnr3":Ljava/lang/String;
    :cond_6
    const/16 v22, 0x0

    .line 600
    .local v22, "emails":[Ljava/lang/String;
    if-eqz v8, :cond_7

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 601
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 602
    const/4 v2, 0x0

    aput-object v8, v22, v2

    .line 604
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 605
    if-eqz v21, :cond_8

    .line 606
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 608
    :cond_8
    if-eqz v27, :cond_9

    .line 609
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 611
    :cond_9
    if-lez v4, :cond_b

    .line 612
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_a

    .line 613
    const-string v2, "updateUsimPBRecordsByIndexWithError"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;II)I

    move-result v26

    .line 638
    .end local v7    # "strAnr":Ljava/lang/String;
    .end local v8    # "strEmail":Ljava/lang/String;
    .end local v21    # "aasIndex":Ljava/lang/Integer;
    .end local v22    # "emails":[Ljava/lang/String;
    .end local v25    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v27    # "sne":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 640
    return v26

    .line 527
    .end local v3    # "efType":I
    .end local v4    # "index":I
    .end local v5    # "newTag":Ljava/lang/String;
    .end local v6    # "newNumber":Ljava/lang/String;
    .end local v9    # "subId":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v23    # "idInt":Ljava/lang/Integer;
    .end local v26    # "result":I
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 528
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 529
    .restart local v9    # "subId":I
    goto/16 :goto_0

    .line 532
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 533
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 534
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 535
    goto/16 :goto_0

    .line 538
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 539
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 540
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 541
    goto/16 :goto_0

    .line 544
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_5
    const/16 v3, 0x4f30

    .line 545
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 546
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 552
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_6
    const/16 v3, 0x4f30

    .line 553
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 554
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .restart local v4    # "index":I
    .restart local v5    # "newTag":Ljava/lang/String;
    .restart local v6    # "newNumber":Ljava/lang/String;
    .restart local v7    # "strAnr":Ljava/lang/String;
    .restart local v8    # "strEmail":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "number":Ljava/lang/String;
    .restart local v21    # "aasIndex":Ljava/lang/Integer;
    .restart local v22    # "emails":[Ljava/lang/String;
    .restart local v23    # "idInt":Ljava/lang/Integer;
    .restart local v25    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v26    # "result":I
    .restart local v27    # "sne":Ljava/lang/String;
    :cond_a
    move-object/from16 v2, p0

    .line 616
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto :goto_1

    .line 620
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_c

    .line 621
    const-string v2, "updateUsimPBRecordsBySearchWithError"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 622
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v10, ""

    invoke-direct {v2, v12, v13, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v2, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v26

    goto/16 :goto_1

    :cond_c
    move-object/from16 v10, p0

    move v11, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v18, v9

    .line 625
    invoke-direct/range {v10 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_1

    .line 631
    .end local v7    # "strAnr":Ljava/lang/String;
    .end local v8    # "strEmail":Ljava/lang/String;
    .end local v21    # "aasIndex":Ljava/lang/Integer;
    .end local v22    # "emails":[Ljava/lang/String;
    .end local v25    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v27    # "sne":Ljava/lang/String;
    :cond_d
    if-lez v4, :cond_e

    move-object/from16 v14, p0

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v20, v9

    .line 632
    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_1

    :cond_e
    move-object/from16 v10, p0

    move v11, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v19

    move/from16 v17, v9

    .line 634
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_1

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
