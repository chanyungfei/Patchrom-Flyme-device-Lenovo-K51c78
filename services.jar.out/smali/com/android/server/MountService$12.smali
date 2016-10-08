.class Lcom/android/server/MountService$12;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$tempV:Landroid/os/storage/StorageVolume;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .prologue
    .line 3306
    iput-object p1, p0, Lcom/android/server/MountService$12;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$12;->val$tempV:Landroid/os/storage/StorageVolume;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/android/server/MountService$12;->this$0:Lcom/android/server/MountService;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    iget-object v2, p0, Lcom/android/server/MountService$12;->val$tempV:Landroid/os/storage/StorageVolume;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 3309
    return-void
.end method
