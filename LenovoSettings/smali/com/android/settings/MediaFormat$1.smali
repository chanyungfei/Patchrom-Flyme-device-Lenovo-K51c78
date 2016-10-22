.class Lcom/flyme/deviceoriginalsettings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MediaFormat;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat$1;->this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat$1;->this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;

    # getter for: Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->access$000(Lcom/flyme/deviceoriginalsettings/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat$1;->this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat$1;->this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->finish()V

    goto :goto_0
.end method
