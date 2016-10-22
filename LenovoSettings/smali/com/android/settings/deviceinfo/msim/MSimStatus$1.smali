.class Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSimStatus batteryInfo action is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$100(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus$1;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/msim/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/flyme/deviceoriginalsettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    return-void
.end method
