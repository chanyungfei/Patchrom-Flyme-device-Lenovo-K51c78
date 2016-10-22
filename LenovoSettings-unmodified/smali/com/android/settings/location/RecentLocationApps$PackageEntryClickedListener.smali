.class Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/settings/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 69
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
