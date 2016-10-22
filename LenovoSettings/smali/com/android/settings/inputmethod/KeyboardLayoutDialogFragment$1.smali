.class Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$1;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->onKeyboardLayoutClicked(I)V
    invoke-static {v0, p2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->access$000(Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;I)V

    .line 110
    return-void
.end method
