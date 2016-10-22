.class final Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;
.super Landroid/os/AsyncTask;
.source "DashboardSortUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/DashboardSortUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UploadDashboardIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/DashboardSortUtil;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/DashboardSortUtil;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;->this$0:Lcom/lenovo/settings/DashboardSortUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/DashboardSortUtil;Lcom/lenovo/settings/DashboardSortUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/DashboardSortUtil;
    .param p2, "x1"    # Lcom/lenovo/settings/DashboardSortUtil$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;-><init>(Lcom/lenovo/settings/DashboardSortUtil;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;->this$0:Lcom/lenovo/settings/DashboardSortUtil;

    # invokes: Lcom/lenovo/settings/DashboardSortUtil;->trackDashboardSortEvents()Z
    invoke-static {v0}, Lcom/lenovo/settings/DashboardSortUtil;->access$100(Lcom/lenovo/settings/DashboardSortUtil;)Z

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method
