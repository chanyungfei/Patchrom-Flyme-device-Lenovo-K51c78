.class Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsResultReceiver"
.end annotation


# static fields
.field private static final CUSTOM_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"


# instance fields
.field invokeIfCustom:Z

.field packageName:Ljava/lang/String;

.field preference:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "preference"    # Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p4, "invokeIfCustom"    # Z

    .prologue
    .line 905
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    .line 906
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 907
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    .line 908
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 909
    iput-boolean p4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    .line 910
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 914
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    .line 915
    .local v3, "results":Landroid/os/Bundle;
    const-string v4, "android.intent.extra.restrictions_list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 917
    .local v1, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const-string v4, "android.intent.extra.restrictions_intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 918
    .local v2, "restrictionsIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 919
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    # invokes: Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v4, v5, v6, v1}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->access$1200(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 920
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    iget-boolean v4, v4, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v4, :cond_0

    .line 921
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    iget-object v7, v7, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    if-eqz v2, :cond_0

    .line 925
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v4, v1}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 926
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    # invokes: Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->access$1300(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    .line 929
    .local v0, "requestCode":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    invoke-virtual {v4, v2, v0}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
