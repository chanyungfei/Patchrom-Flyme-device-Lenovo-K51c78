.class Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    const/16 v1, 0x37

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->runKeyguardConfirmationAosp(I)Z
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->access$300(Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0250

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0251

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    :cond_0
    return-void
.end method
