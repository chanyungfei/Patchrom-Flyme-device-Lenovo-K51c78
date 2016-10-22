.class Lcom/lenovo/settings/LenovoWirelessSettings$3;
.super Ljava/lang/Object;
.source "LenovoWirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/LenovoWirelessSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/LenovoWirelessSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings$3;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings$3;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANAGE_MOBILE_PLAN_DIALOG.onClickListener id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->access$100(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings$3;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->access$202(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    return-void
.end method
