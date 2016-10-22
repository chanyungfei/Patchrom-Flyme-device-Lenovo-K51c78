.class Lcom/lenovo/settings/LenovoUEServiceActivity$1;
.super Ljava/lang/Object;
.source "LenovoUEServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 92
    iput-object p1, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$1;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$1;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-virtual {v0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->finish()V

    .line 98
    return-void
.end method
