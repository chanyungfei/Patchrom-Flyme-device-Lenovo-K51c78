.class public Lcom/gsma/services/nfc/OffHostService;
.super Ljava/lang/Object;
.source "OffHostService.java"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.gsma.services.nfc.action.OFF_HOST_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "com.gsma.services.nfc.off_host_service"

.field static final TAG:Ljava/lang/String; = "OffHostService"


# instance fields
.field private mAidGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mBanner:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mGsmaEx:Landroid/nfc/INfcAdapterGsmaExtras;

.field private mSeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "SeName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroups:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/gsma/services/nfc/OffHostService;->mSeName:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/utils/InsufficientResourcesException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v9, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 72
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 73
    new-instance v9, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string v10, "Cannot get NFC Default Adapter"

    invoke-direct {v9, v10}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapterGsmaExtrasInterface()Landroid/nfc/INfcAdapterGsmaExtras;

    move-result-object v9

    iput-object v9, p0, Lcom/gsma/services/nfc/OffHostService;->mGsmaEx:Landroid/nfc/INfcAdapterGsmaExtras;

    .line 77
    iget-object v9, p0, Lcom/gsma/services/nfc/OffHostService;->mGsmaEx:Landroid/nfc/INfcAdapterGsmaExtras;

    if-nez v9, :cond_1

    .line 78
    new-instance v9, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string v10, "Cannot get NFC Gsma Extra interface"

    invoke-direct {v9, v10}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 82
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v5, "aidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroups:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 88
    .local v7, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/gsma/services/nfc/AidGroup;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 89
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/nfc/AidGroup;

    .line 90
    .local v2, "aidGroup":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual {v2}, Lcom/gsma/services/nfc/AidGroup;->getGroupAidList()Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "aidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 93
    .local v4, "aidListIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 94
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "aid":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "aidGroup":Lcom/gsma/services/nfc/AidGroup;
    .end local v3    # "aidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "aidListIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 101
    .local v8, "setIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 102
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .restart local v1    # "aid":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/gsma/services/nfc/OffHostService;->mGsmaEx:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v9, v1}, Landroid/nfc/INfcAdapterGsmaExtras;->routeAids(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v6

    .line 107
    .local v6, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string v10, "Cannot do routeAids"

    invoke-direct {v9, v10}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 112
    .end local v1    # "aid":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/gsma/services/nfc/OffHostService;->mGsmaEx:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v9}, Landroid/nfc/INfcAdapterGsmaExtras;->commitRouting()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    return-void

    .line 113
    :catch_1
    move-exception v6

    .line 114
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v9, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string v10, "Cannot do commitRouting"

    invoke-direct {v9, v10}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/gsma/services/nfc/AidGroup;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;

    move-result-object v0

    .line 57
    .local v0, "aidGroup":Lcom/gsma/services/nfc/AidGroup;
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-object v0
.end method

.method public deleteAidGroup(Lcom/gsma/services/nfc/AidGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/gsma/services/nfc/AidGroup;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public getAidGroups()[Lcom/gsma/services/nfc/AidGroup;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroups:Ljava/util/List;

    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/gsma/services/nfc/AidGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/nfc/AidGroup;

    return-object v0
.end method

.method public getBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mSeName:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method
