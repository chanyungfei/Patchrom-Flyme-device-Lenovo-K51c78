.class Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$2;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$2;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->finish()V

    .line 214
    return-void
.end method
