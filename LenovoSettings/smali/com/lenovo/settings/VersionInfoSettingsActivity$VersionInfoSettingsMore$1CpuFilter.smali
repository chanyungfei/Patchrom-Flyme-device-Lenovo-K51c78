.class Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$1CpuFilter;
.super Ljava/lang/Object;
.source "VersionInfoSettingsActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getProcessorInformation()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$1CpuFilter;->this$0:Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 257
    const-string v0, "cpu[0-9]"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
