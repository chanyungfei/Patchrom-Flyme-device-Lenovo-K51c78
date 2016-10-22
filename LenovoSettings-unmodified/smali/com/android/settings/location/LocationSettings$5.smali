.class final Lcom/android/settings/location/LocationSettings$5;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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
    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "managed_profile_location_switch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
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
    .line 561
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    const/4 v2, 0x0

    .line 565
    .local v2, "screenTitle":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isQualcommPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c027f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    :goto_0
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 572
    .local v0, "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 573
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 574
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    .end local v2    # "screenTitle":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 568
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    .restart local v2    # "screenTitle":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c027e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 578
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    .end local v2    # "screenTitle":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
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
    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 553
    .local v1, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v2, 0x7f060022

    iput v2, v1, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 554
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    return-object v0
.end method
