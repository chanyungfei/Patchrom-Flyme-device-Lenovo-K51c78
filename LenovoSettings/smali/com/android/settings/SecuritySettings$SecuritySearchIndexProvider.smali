.class Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 1409
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 1410
    return-void

    .line 1409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1514
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1515
    :cond_0
    const-string v3, "sim_lock"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    :cond_1
    const-string v3, "credential_storage_type"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    const-string v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1520
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1521
    const-string v3, "credentials_management"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    :cond_2
    const-string v3, "manage_notification_access"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1458
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1461
    .local v2, "res":Landroid/content/res/Resources;
    const v8, 0x7f0c0196

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1463
    .local v5, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1464
    .local v0, "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1465
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1466
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    iget-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v8, :cond_0

    .line 1469
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    const v3, 0x7f0c055d

    .line 1472
    .local v3, "resId":I
    :goto_0
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1473
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1474
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1475
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    .end local v3    # "resId":I
    :cond_0
    const-string v8, "user"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1481
    .local v7, "um":Landroid/os/UserManager;
    const-string v8, "no_config_credentials"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1482
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1484
    .local v1, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v8

    if-eqz v8, :cond_3

    const v6, 0x7f0c0a4b

    .line 1488
    .local v6, "storageSummaryRes":I
    :goto_1
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1489
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1490
    iput-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1491
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    .end local v1    # "keyStore":Landroid/security/KeyStore;
    .end local v6    # "storageSummaryRes":I
    :cond_1
    return-object v4

    .line 1469
    .end local v7    # "um":Landroid/os/UserManager;
    :cond_2
    const v3, 0x7f0c055b

    goto :goto_0

    .line 1484
    .restart local v1    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "um":Landroid/os/UserManager;
    :cond_3
    const v6, 0x7f0c0a4c

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    const/4 v0, 0x0

    .line 1428
    .local v0, "resId":I
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v3, :cond_0

    .line 1443
    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1444
    .local v2, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v3, 0x7f060038

    iput v3, v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 1445
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    .end local v2    # "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    :cond_0
    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1450
    .restart local v2    # "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v3, 0x7f060033

    iput v3, v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 1451
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    return-object v1
.end method
