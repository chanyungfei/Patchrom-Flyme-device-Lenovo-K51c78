.class Lcom/lenovo/settings/LenovoWirelessSettings$4;
.super Landroid/telephony/PhoneStateListener;
.source "LenovoWirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/LenovoWirelessSettings;
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
    .line 869
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 873
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener, new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v2}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    const-string v3, "phone"

    # invokes: Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/lenovo/settings/LenovoWirelessSettings;->access$300(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 877
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 879
    .local v0, "currPhoneCallState":I
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total PhoneState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    if-nez v0, :cond_0

    .line 882
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    # setter for: Lcom/lenovo/settings/LenovoWirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v2, v3}, Lcom/lenovo/settings/LenovoWirelessSettings;->access$402(Lcom/lenovo/settings/LenovoWirelessSettings;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;

    .line 883
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    # invokes: Lcom/lenovo/settings/LenovoWirelessSettings;->updateMobileNetworkEnabled()V
    invoke-static {v2}, Lcom/lenovo/settings/LenovoWirelessSettings;->access$500(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    .line 886
    .end local v0    # "currPhoneCallState":I
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method
