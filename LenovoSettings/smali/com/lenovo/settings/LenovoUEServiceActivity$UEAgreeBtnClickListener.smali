.class final Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;
.super Ljava/lang/Object;
.source "LenovoUEServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/LenovoUEServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEAgreeBtnClickListener"
.end annotation


# instance fields
.field dialog:Landroid/content/DialogInterface;

.field final synthetic this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/LenovoUEServiceActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;->dialog:Landroid/content/DialogInterface;

    .line 169
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;->dialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    iget-object v0, p0, Lcom/lenovo/settings/LenovoUEServiceActivity$UEAgreeBtnClickListener;->this$0:Lcom/lenovo/settings/LenovoUEServiceActivity;

    invoke-virtual {v0}, Lcom/lenovo/settings/LenovoUEServiceActivity;->finish()V

    .line 182
    return-void
.end method
