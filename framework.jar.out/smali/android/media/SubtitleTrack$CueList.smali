.class Landroid/media/SubtitleTrack$CueList;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$CueList$EntryIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CueList"


# instance fields
.field public DEBUG:Z

.field private mCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    .line 597
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    .line 598
    return-void
.end method

.method static synthetic access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/SubtitleTrack$CueList;

    .prologue
    .line 417
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SubtitleTrack$CueList;
    .param p1, "x1"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "x2"    # J

    .prologue
    .line 417
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    return-void
.end method

.method private addEvent(Landroid/media/SubtitleTrack$Cue;J)Z
    .locals 4
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .prologue
    .line 424
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 425
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-nez v0, :cond_1

    .line 426
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 427
    .restart local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 434
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 428
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    .locals 4
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .prologue
    .line 438
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 439
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 442
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroid/media/SubtitleTrack$Cue;)V
    .locals 12
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    .line 449
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v8, v9}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 456
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 457
    .local v2, "lastTimeMs":J
    iget-object v5, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v5, :cond_3

    .line 458
    iget-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-wide v6, v0, v1

    .line 459
    .local v6, "timeMs":J
    cmp-long v5, v6, v2

    if-lez v5, :cond_2

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 460
    invoke-direct {p0, p1, v6, v7}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    .line 461
    move-wide v2, v6

    .line 458
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "timeMs":J
    :cond_3
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v8, v9}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    goto :goto_0
.end method

.method public entriesBetween(JJ)Ljava/lang/Iterable;
    .locals 7
    .param p1, "lastTimeMs"    # J
    .param p3, "timeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Landroid/media/SubtitleTrack$CueList$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/SubtitleTrack$CueList$1;-><init>(Landroid/media/SubtitleTrack$CueList;JJ)V

    return-object v0
.end method

.method public nextTimeAfter(J)J
    .locals 9
    .param p1, "timeMs"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    :try_start_0
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    const-wide/16 v6, 0x1

    add-long/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_0

    .line 500
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 507
    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v4

    .line 502
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-wide v2, v4

    .line 505
    goto :goto_0

    .line 506
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    move-wide v2, v4

    .line 507
    goto :goto_0
.end method

.method public remove(Landroid/media/SubtitleTrack$Cue;)V
    .locals 8
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    .line 470
    iget-wide v6, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v6, v7}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 471
    iget-object v3, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_0

    .line 472
    iget-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 473
    .local v4, "timeMs":J
    invoke-direct {p0, p1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "timeMs":J
    :cond_0
    iget-wide v6, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v6, v7}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 477
    return-void
.end method
