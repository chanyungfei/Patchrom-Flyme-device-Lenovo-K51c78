.class Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
.super Landroid/app/DialogFragment;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/deviceinfo/MemoryExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwapAlertFragment"
.end annotation


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field final synthetic this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0
    .param p2, "service"    # Landroid/os/storage/IMountService;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->mMountService:Landroid/os/storage/IMountService;

    .line 546
    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->mMountService:Landroid/os/storage/IMountService;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c036c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment$1;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment$1;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c036d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
