.class Lcom/lenovo/settings/AboutActivity$5;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/AboutActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/AboutActivity;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lenovo/settings/AboutActivity$5;->this$0:Lcom/lenovo/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity$5;->this$0:Lcom/lenovo/settings/AboutActivity;

    # getter for: Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;
    invoke-static {v0}, Lcom/lenovo/settings/AboutActivity;->access$000(Lcom/lenovo/settings/AboutActivity;)Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->setChecked(Z)V

    .line 413
    const-string v0, "persist.backgrounddata.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method
