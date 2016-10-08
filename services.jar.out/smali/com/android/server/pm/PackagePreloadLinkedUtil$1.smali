.class Lcom/android/server/pm/PackagePreloadLinkedUtil$1;
.super Ljava/lang/Object;
.source "PackagePreloadLinkedUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackagePreloadLinkedUtil;->getNeedNewPreloadApps([Ljava/lang/String;Z)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackagePreloadLinkedUtil;

.field final synthetic val$oldApplist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackagePreloadLinkedUtil;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;->this$0:Lcom/android/server/pm/PackagePreloadLinkedUtil;

    iput-object p2, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;->val$oldApplist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;->val$oldApplist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "PackagePreloadLinkedUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already exist :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_0
    const-string v0, "PackagePreloadLinkedUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new app need new prelinked :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method
