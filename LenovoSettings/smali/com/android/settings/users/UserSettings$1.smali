.class Lcom/flyme/deviceoriginalsettings/users/UserSettings$1;
.super Landroid/os/Handler;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/users/UserSettings;->updateUserList()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/users/UserSettings;->access$000(Lcom/flyme/deviceoriginalsettings/users/UserSettings;)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/flyme/deviceoriginalsettings/users/UserSettings;->onUserCreated(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/users/UserSettings;->access$100(Lcom/flyme/deviceoriginalsettings/users/UserSettings;I)V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/users/UserSettings;->onManageUserClicked(IZ)V
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/users/UserSettings;->access$200(Lcom/flyme/deviceoriginalsettings/users/UserSettings;IZ)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
