.class Lcom/lenovo/settings/LenovoUEServiceActivity$2;
.super Ljava/lang/Object;
.source "LenovoUEServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/LenovoUEServiceActivity;->popupPromotion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/LenovoUEServiceActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$2;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 105
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 107
    iget-object v0, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$2;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-virtual {v0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->finish()V

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
