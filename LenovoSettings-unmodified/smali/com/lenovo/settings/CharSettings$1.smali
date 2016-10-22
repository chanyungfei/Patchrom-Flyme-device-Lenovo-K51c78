.class Lcom/lenovo/settings/CharSettings$1;
.super Landroid/os/Handler;
.source "CharSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/CharSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/CharSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/CharSettings;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/settings/CharSettings$1;->this$0:Lcom/lenovo/settings/CharSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/settings/CharSettings$1;->this$0:Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v0}, Lcom/lenovo/settings/CharSettings;->initialCharSettings()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method
