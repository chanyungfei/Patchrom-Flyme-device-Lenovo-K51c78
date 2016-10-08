.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$bypassRadioOff:Z

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;[ZZJ)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    iput-boolean p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$bypassRadioOff:Z

    iput-wide p4, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1052
    const-string v9, "ShutdownThread"

    const-string v10, "task run"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v9, "nfc"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    .line 1056
    .local v3, "nfc":Landroid/nfc/INfcAdapter;
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1058
    .local v5, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v9, "bluetooth_manager"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 1063
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v9

    if-ne v9, v7, :cond_7

    :cond_0
    move v4, v7

    .line 1065
    .local v4, "nfcOff":Z
    :goto_0
    if-nez v4, :cond_1

    .line 1066
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off NFC..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_8

    :cond_2
    move v1, v7

    .line 1076
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_3

    .line 1077
    const-string v9, "ShutdownThread"

    const-string v10, "Disabling Bluetooth..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1086
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v9

    if-nez v9, :cond_9

    :cond_4
    move v6, v7

    .line 1087
    .local v6, "radioOff":Z
    :goto_4
    if-nez v6, :cond_5

    .line 1088
    # getter for: Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()I

    move-result v9

    if-eq v9, v7, :cond_5

    .line 1089
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off cellular radios..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1097
    :cond_5
    :goto_5
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v6, v9, v7

    .line 1099
    const-string v9, "ShutdownThread"

    const-string v10, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-boolean v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$bypassRadioOff:Z

    if-eqz v9, :cond_b

    .line 1102
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v7, v9, v8

    .line 1103
    const-string v7, "ShutdownThread"

    const-string v8, "bypass RadioOff!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_6
    :goto_6
    return-void

    .end local v1    # "bluetoothOff":Z
    .end local v4    # "nfcOff":Z
    .end local v6    # "radioOff":Z
    :cond_7
    move v4, v8

    .line 1063
    goto :goto_0

    .line 1069
    :catch_0
    move-exception v2

    .line 1070
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    const/4 v4, 0x1

    .restart local v4    # "nfcOff":Z
    goto :goto_1

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_8
    move v1, v8

    .line 1075
    goto :goto_2

    .line 1080
    :catch_1
    move-exception v2

    .line 1081
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_3

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_9
    move v6, v8

    .line 1086
    goto :goto_4

    .line 1093
    :catch_2
    move-exception v2

    .line 1094
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    const/4 v6, 0x1

    .restart local v6    # "radioOff":Z
    goto :goto_5

    .line 1146
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_a
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1105
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_6

    .line 1106
    if-nez v1, :cond_c

    .line 1108
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    if-nez v9, :cond_f

    move v1, v7

    .line 1113
    :goto_7
    if-eqz v1, :cond_c

    .line 1114
    const-string v9, "ShutdownThread"

    const-string v10, "Bluetooth turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_c
    if-nez v6, :cond_d

    .line 1119
    :try_start_4
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    if-nez v9, :cond_10

    move v6, v7

    .line 1124
    :goto_8
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v6, v9, v7

    .line 1125
    if-eqz v6, :cond_d

    .line 1126
    const-string v9, "ShutdownThread"

    const-string v10, "Radio turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_d
    if-nez v4, :cond_e

    .line 1131
    :try_start_5
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v9

    if-ne v9, v7, :cond_11

    move v4, v7

    .line 1136
    :goto_9
    if-eqz v4, :cond_e

    .line 1137
    const-string v9, "ShutdownThread"

    const-string v10, "NFC turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_e
    if-eqz v6, :cond_a

    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 1142
    const-string v9, "ShutdownThread"

    const-string v10, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v7, v9, v8

    goto :goto_6

    :cond_f
    move v1, v8

    .line 1108
    goto :goto_7

    .line 1109
    :catch_3
    move-exception v2

    .line 1110
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    const/4 v1, 0x1

    goto :goto_7

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_10
    move v6, v8

    .line 1119
    goto :goto_8

    .line 1120
    :catch_4
    move-exception v2

    .line 1121
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    const/4 v6, 0x1

    goto :goto_8

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_11
    move v4, v8

    .line 1131
    goto :goto_9

    .line 1132
    :catch_5
    move-exception v2

    .line 1133
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    const/4 v4, 0x1

    goto :goto_9
.end method
