.class Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$1;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    # invokes: Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->access$000(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;Ljava/lang/String;)V

    .line 195
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    # invokes: Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->access$100(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)V

    goto :goto_0
.end method
