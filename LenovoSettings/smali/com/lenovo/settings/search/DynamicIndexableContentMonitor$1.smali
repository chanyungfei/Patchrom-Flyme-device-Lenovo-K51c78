.class Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$1;
.super Landroid/os/Handler;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$1;->this$0:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$1;->this$0:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    # invokes: Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->handlePackageAvailable(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->access$000(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v0    # "packageName":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 60
    .restart local v0    # "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$1;->this$0:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    # invokes: Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->handlePackageUnavailable(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->access$100(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
