.class Landroid/app/ActivityManager$AppTask$1;
.super Landroid/app/IAppStateListener$Stub;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityManager$AppTask;->registerAppStateListener([Ljava/lang/String;Landroid/app/AppStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityManager$AppTask;

.field final synthetic val$l:Landroid/app/AppStateListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$AppTask;Landroid/app/AppStateListener;)V
    .locals 0

    .prologue
    .line 2862
    iput-object p1, p0, Landroid/app/ActivityManager$AppTask$1;->this$0:Landroid/app/ActivityManager$AppTask;

    iput-object p2, p0, Landroid/app/ActivityManager$AppTask$1;->val$l:Landroid/app/AppStateListener;

    invoke-direct {p0}, Landroid/app/IAppStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appQuit(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "when"    # J
    .param p4, "quitType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2869
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask$1;->val$l:Landroid/app/AppStateListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/AppStateListener;->appQuit(Ljava/lang/String;JI)V

    .line 2870
    return-void
.end method

.method public appStarted(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "when"    # J
    .param p4, "startType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2865
    iget-object v0, p0, Landroid/app/ActivityManager$AppTask$1;->val$l:Landroid/app/AppStateListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/AppStateListener;->appStarted(Ljava/lang/String;JI)V

    .line 2866
    return-void
.end method
