.class Landroid/app/ActivityManager$1;
.super Lcom/lenovo/datamining/avatar/system/IAppExceptionListener$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityManager;->registerAppExceptionListener(Lcom/lenovo/datamining/avatar/system/AppExceptionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityManager;

.field final synthetic val$listener:Lcom/lenovo/datamining/avatar/system/AppExceptionListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Lcom/lenovo/datamining/avatar/system/AppExceptionListener;)V
    .locals 0

    .prologue
    .line 2902
    iput-object p1, p0, Landroid/app/ActivityManager$1;->this$0:Landroid/app/ActivityManager;

    iput-object p2, p0, Landroid/app/ActivityManager$1;->val$listener:Lcom/lenovo/datamining/avatar/system/AppExceptionListener;

    invoke-direct {p0}, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppExecption(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "when"    # J
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "backTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2908
    iget-object v0, p0, Landroid/app/ActivityManager$1;->val$listener:Lcom/lenovo/datamining/avatar/system/AppExceptionListener;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/datamining/avatar/system/AppExceptionListener;->onAppExecption(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2909
    return-void
.end method
