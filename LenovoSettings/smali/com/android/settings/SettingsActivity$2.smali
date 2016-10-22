.class Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 452
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 454
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 455
    .local v0, "forceRefresh":Z
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    # getter for: Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->access$100(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/flyme/deviceoriginalsettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->access$200(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Ljava/util/List;)V

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
