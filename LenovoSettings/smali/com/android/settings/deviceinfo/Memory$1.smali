.class Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  onStorageStateChanged path= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",newState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Lcom/lenovo/settings/deviceinfo/MemoryExts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateMtkCategory()V

    .line 211
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getOtgVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$100(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    iput-object v6, v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mOtgVolume:Landroid/os/storage/StorageVolume;

    .line 212
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iget-object v5, v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mOtgVolume:Landroid/os/storage/StorageVolume;

    if-eqz v5, :cond_0

    const-string v5, "/storage/usbotg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    const-string v5, "mounted"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 214
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iget-object v7, v7, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mOtgVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v6, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v6

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->addCategory(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V
    invoke-static {v5, v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 230
    :cond_0
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received storage state changed notification that "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed state from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 233
    .local v0, "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 234
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 239
    .end local v0    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    return-void

    .line 216
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 217
    .local v2, "itr":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 219
    .restart local v0    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 220
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "volumePath":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v5, "/storage/usbotg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 223
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
