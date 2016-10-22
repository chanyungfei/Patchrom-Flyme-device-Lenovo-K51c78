.class Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c07e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    return-void
.end method
