.class Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$3;
.super Ljava/lang/Thread;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;)V

    .line 325
    return-void
.end method
