.class Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment$1;
.super Ljava/lang/Object;
.source "MemoryExts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment$1;->this$1:Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment$1;->this$1:Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment$1;->this$1:Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->mMountService:Landroid/os/storage/IMountService;
    invoke-static {v1}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->access$500(Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;)Landroid/os/storage/IMountService;

    move-result-object v1

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V
    invoke-static {v0, v1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$600(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    .line 556
    return-void
.end method
