.class Lcom/android/server/MountService$19;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 5456
    iput-object p1, p0, Lcom/android/server/MountService$19;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/android/server/MountService$19;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/MountService;->mNotifySDDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$6102(Lcom/android/server/MountService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5459
    return-void
.end method
