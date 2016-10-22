.class Lcom/lenovo/settings/deviceinfo/MemoryExts$7;
.super Landroid/content/BroadcastReceiver;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/deviceinfo/MemoryExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 610
    const-string v9, "MemorySettings"

    const-string v10, "Receive dynamic sd swap broadcast"

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v11}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$900(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/os/storage/StorageManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v11

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    invoke-static {v10, v11}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$1000(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v10

    # setter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v9, v10}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$802(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    .line 612
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v9}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$800(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v8, v0, v5

    .line 614
    .local v8, "volume":Landroid/os/storage/StorageVolume;
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$1100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 615
    .local v2, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 616
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 617
    invoke-virtual {v2, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateStorageVolumePrefCategory(Landroid/os/storage/StorageVolume;)V

    goto :goto_1

    .line 622
    .end local v2    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-static {v9}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$1200(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    move-result-object v1

    .local v1, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v3, v1, v4

    .line 623
    .local v3, "disk":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 624
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$1300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 622
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 612
    .end local v3    # "disk":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 628
    .end local v1    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v7    # "len$":I
    .end local v8    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateInstallLocation()V
    invoke-static {v9}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$1400(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    .line 629
    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V
    invoke-static {v9}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    .line 630
    return-void
.end method
