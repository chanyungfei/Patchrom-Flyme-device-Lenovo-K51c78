.class Lcom/flyme/deviceoriginalsettings/deviceinfo/Status$5;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Status$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Status$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;->mServiceState:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;->access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;I)I

    .line 279
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Status$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;->access$100(Lcom/flyme/deviceoriginalsettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    .line 280
    return-void
.end method
